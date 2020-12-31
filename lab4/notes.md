# LogP Gradient

In the Point environment the $\log \pi (s|a)$ is:

$ \log \pi (s|a) = \frac{\log 2 \pi - \sum_{i}^{|A|} (ai - \theta s)^2}{2} $

Then to compute the gradient with respect to the trainable parameters $\theta$,
we apply simple concepts of derivatives.

$ \nabla_{\theta} \log \pi (s|a) = \frac{1}{2} \cdot \log.2.\pi - \frac{1}{2} \cdot \sum_{i}^{|A|} (a_i - \theta s)^2 $

The left term of the equation does not depend on $\theta$, so we can drop it.

$ \nabla_{\theta} \log \pi (s|a) = \frac{1}{2} \cdot\sum_{i}^{|A|} (a_i - \theta s)^2 $

Finally, we apply the chain rule to compute the derivative of the remainig term

$ \nabla_{\theta} \log \pi (s|a) = \sum_{i}^{|A|} (a_i - \theta.s) \cdot \nabla_{\theta} \sum_{i}^{|A|} (a_i - \thet s) $
$ \nabla_{\theta} \log \pi (s|a) = \sum_{i}^{|A|} (a_i - \theta s) \cdot \theta s) $


