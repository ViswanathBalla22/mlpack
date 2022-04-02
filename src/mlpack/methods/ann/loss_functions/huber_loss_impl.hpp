/**
 * @file methods/ann/loss_functions/huber_loss_impl.hpp
 * @author Mrityunjay Tripathi
 *
 * Implementation of the Huber loss function.
 *
 * mlpack is free software; you may redistribute it and/or modify it under the
 * terms of the 3-clause BSD license.  You should have received a copy of the
 * 3-clause BSD license along with mlpack.  If not, see
 * http://www.opensource.org/licenses/BSD-3-Clause for more information.
 */
#ifndef MLPACK_METHODS_ANN_LOSS_FUNCTION_HUBER_LOSS_IMPL_HPP
#define MLPACK_METHODS_ANN_LOSS_FUNCTION_HUBER_LOSS_IMPL_HPP

// In case it hasn't yet been included.
#include "huber_loss.hpp"

namespace mlpack {
namespace ann /** Artificial Neural Network. */ {

template<typename MatType>
HuberLoss<MatType>::HuberLoss(
    const double delta,
    const bool mean):
    delta(delta),
    mean(mean)
{
  // Nothing to do here.
}

template<typename MatType>
typename MatType::elem_type HuberLoss<MatType>::Forward(
    const MatType& prediction,
    const MatType& target)
{
  typedef typename MatType::elem_type ElemType;
  ElemType loss = 0;
  for (size_t i = 0; i < prediction.n_elem; ++i)
  {
      const ElemType absError = std::abs(target[i] - prediction[i]);
      loss += absError > delta ?
          delta * (absError - 0.5 * delta) : 0.5 * std::pow(absError, 2);
  }
  return mean ? loss / prediction.n_elem : loss;
}

template<typename MatType>
void HuberLoss<MatType>::Backward(
    const MatType& prediction,
    const MatType& target,
    MatType& loss)
{
  typedef typename MatType::elem_type ElemType;

  loss.set_size(size(prediction));
  for (size_t i = 0; i < loss.n_elem; ++i)
  {
    const ElemType absError = std::abs(target[i] - prediction[i]);
    loss[i] = absError > delta ?
        -delta * (target[i] - prediction[i]) / absError :
        prediction[i] - target[i];
    if (mean)
      loss[i] /= loss.n_elem;
  }
}

template<typename MatType>
template<typename Archive>
void HuberLoss<MatType>::serialize(
    Archive& ar,
    const uint32_t /* version */)
{
  ar(CEREAL_NVP(delta));
  ar(CEREAL_NVP(mean));
}

} // namespace ann
} // namespace mlpack

#endif
