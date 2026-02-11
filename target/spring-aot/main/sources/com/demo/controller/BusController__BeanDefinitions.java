package com.demo.controller;

import com.demo.service.BusService;
import org.springframework.aot.generate.Generated;
import org.springframework.beans.factory.aot.BeanInstanceSupplier;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.support.RootBeanDefinition;

/**
 * Bean definitions for {@link BusController}.
 */
@Generated
public class BusController__BeanDefinitions {
  /**
   * Get the bean instance supplier for 'busController'.
   */
  private static BeanInstanceSupplier<BusController> getBusControllerInstanceSupplier() {
    return BeanInstanceSupplier.<BusController>forConstructor(BusService.class)
            .withGenerator((registeredBean, args) -> new BusController(args.get(0)));
  }

  /**
   * Get the bean definition for 'busController'.
   */
  public static BeanDefinition getBusControllerBeanDefinition() {
    RootBeanDefinition beanDefinition = new RootBeanDefinition(BusController.class);
    beanDefinition.setInstanceSupplier(getBusControllerInstanceSupplier());
    return beanDefinition;
  }
}
