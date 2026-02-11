package com.demo.controller;

import com.demo.service.BusService;
import org.springframework.aot.generate.Generated;
import org.springframework.beans.factory.aot.BeanInstanceSupplier;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.support.RootBeanDefinition;

/**
 * Bean definitions for {@link BusesController}.
 */
@Generated
public class BusesController__BeanDefinitions {
  /**
   * Get the bean instance supplier for 'busesController'.
   */
  private static BeanInstanceSupplier<BusesController> getBusesControllerInstanceSupplier() {
    return BeanInstanceSupplier.<BusesController>forConstructor(BusService.class)
            .withGenerator((registeredBean, args) -> new BusesController(args.get(0)));
  }

  /**
   * Get the bean definition for 'busesController'.
   */
  public static BeanDefinition getBusesControllerBeanDefinition() {
    RootBeanDefinition beanDefinition = new RootBeanDefinition(BusesController.class);
    beanDefinition.setInstanceSupplier(getBusesControllerInstanceSupplier());
    return beanDefinition;
  }
}
