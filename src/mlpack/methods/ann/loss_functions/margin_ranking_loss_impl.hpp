/**
 * @file methods/ann/loss_functions/margin_ranking_loss_impl.hpp
 * @author Andrei Mihalea
 *
 * Implementation of the Margin Ranking Loss function.
 *
 * mlpack is free software; you may redistribute it and/or modify it under the
 * terms of the 3-clause BSD license.  You should have received a copy of the
 * 3-clause BSD license along with mlpack.  If not, see
 * http://www.opensource.org/licenses/BSD-3-Clause for more information.
 */
#ifndef MLPACK_METHODS_ANN_LOSS_FUNCTION_MARGIN_IMPL_LOSS_HPP
#define MLPACK_METHODS_ANN_LOSS_FUNCTION_MARGIN_IMPL_LOSS_HPP

// In case it hasn't been included.
#include "margin_ranking_loss.hpp"

namespace mlpack {
namespace ann /** Artifical Neural Network. */ {

template<typename MatType>
MarginRankingLoss<MatType>::MarginRankingLoss(
    const double margin) : margin(margin)
{
  // Nothing to do here.
}

template<typename MatType>
typename MatType::elem_type MarginRankingLoss<MatType>::Forward(
    const MatType& prediction,
    const MatType& target)
{
  const int predictionRows = prediction.n_rows;
  const MatType& prediction1 = prediction.rows(0,
      predictionRows / 2 - 1);
  const MatType& prediction2 = prediction.rows(predictionRows / 2,
      predictionRows - 1);
  return arma::accu(arma::max(arma::zeros(size(target)),
      -target % (prediction1 - prediction2) + margin)) / target.n_cols;
}

template<typename MatType>
void MarginRankingLoss<MatType>::Backward(
    const MatType& prediction,
    const MatType& target,
    MatType& loss)
{
  const int predictionRows = prediction.n_rows;
  const MatType& prediction1 = prediction.rows(0,
      predictionRows / 2 - 1);
  const MatType& prediction2 = prediction.rows(predictionRows / 2,
      predictionRows - 1);
  loss = -target % (prediction1 - prediction2) + margin;
  loss.elem(arma::find(loss >= 0)).ones();
  loss.elem(arma::find(loss < 0)).zeros();
  loss = (prediction2 - prediction1) % loss / target.n_cols;
}

template<typename MatType>
template<typename Archive>
void MarginRankingLoss<MatType>::serialize(
    Archive& ar,
    const uint32_t /* version */)
{
  ar(CEREAL_NVP(margin));
}

} // namespace ann
} // namespace mlpack

#endif
