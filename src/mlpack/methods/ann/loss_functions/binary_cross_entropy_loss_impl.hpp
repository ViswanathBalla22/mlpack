/**
 * @file methods/ann/loss_functions/binary_cross_entropy_loss_impl.hpp
 * @author Konstantin Sidorov
 *
 * Implementation of the binary-cross-entropy performance function.
 *
 * mlpack is free software; you may redistribute it and/or modify it under the
 * terms of the 3-clause BSD license.  You should have received a copy of the
 * 3-clause BSD license along with mlpack.  If not, see
 * http://www.opensource.org/licenses/BSD-3-Clause for more information.
 */
#ifndef MLPACK_METHODS_ANN_LOSS_FUNCTIONS_CROSS_ENTROPY_ERROR_IMPL_HPP
#define MLPACK_METHODS_ANN_LOSS_FUNCTIONS_CROSS_ENTROPY_ERROR_IMPL_HPP

// In case it hasn't yet been included.
#include "binary_cross_entropy_loss.hpp"

namespace mlpack {
namespace ann /** Artificial Neural Network. */ {

template<typename MatType>
BCELoss<MatType>::BCELoss(
    const double eps, const bool reduction) : eps(eps), reduction(reduction)
{
  // Nothing to do here.
}

template<typename MatType>
typename MatType::elem_type BCELoss<MatType>::Forward(
    const MatType& prediction,
    const MatType& target)
{
  typedef typename MatType::elem_type ElemType;

  ElemType loss = -arma::accu(target % arma::log(prediction + eps) +
      (1. - target) % arma::log(1. - prediction + eps));
  if (reduction)
    loss /= prediction.n_elem;
  return loss;
}

template<typename MatType>
void BCELoss<MatType>::Backward(
    const MatType& prediction,
    const MatType& target,
    MatType& loss)
{
  loss = (1. - target) / (1. - prediction + eps) - target / (prediction + eps);
  if (reduction)
    loss /= prediction.n_elem;
}

template<typename MatType>
template<typename Archive>
void BCELoss<MatType>::serialize(
    Archive& ar,
    const uint32_t /* version */)
{
  ar(CEREAL_NVP(eps));
}

} // namespace ann
} // namespace mlpack

#endif
