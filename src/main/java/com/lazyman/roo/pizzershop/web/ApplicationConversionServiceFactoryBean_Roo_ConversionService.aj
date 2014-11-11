// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.lazyman.roo.pizzershop.web;

import com.lazyman.roo.pizzershop.domain.Base;
import com.lazyman.roo.pizzershop.domain.Pizza;
import com.lazyman.roo.pizzershop.domain.PizzaOrder;
import com.lazyman.roo.pizzershop.domain.Topping;
import com.lazyman.roo.pizzershop.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Base, String> ApplicationConversionServiceFactoryBean.getBaseToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.lazyman.roo.pizzershop.domain.Base, java.lang.String>() {
            public String convert(Base base) {
                return new StringBuilder().append(base.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Base> ApplicationConversionServiceFactoryBean.getIdToBaseConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.lazyman.roo.pizzershop.domain.Base>() {
            public com.lazyman.roo.pizzershop.domain.Base convert(java.lang.Long id) {
                return Base.findBase(id);
            }
        };
    }
    
    public Converter<String, Base> ApplicationConversionServiceFactoryBean.getStringToBaseConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.lazyman.roo.pizzershop.domain.Base>() {
            public com.lazyman.roo.pizzershop.domain.Base convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Base.class);
            }
        };
    }
    
    public Converter<Pizza, String> ApplicationConversionServiceFactoryBean.getPizzaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.lazyman.roo.pizzershop.domain.Pizza, java.lang.String>() {
            public String convert(Pizza pizza) {
                return new StringBuilder().append(pizza.getName()).append(' ').append(pizza.getPrice()).toString();
            }
        };
    }
    
    public Converter<Long, Pizza> ApplicationConversionServiceFactoryBean.getIdToPizzaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.lazyman.roo.pizzershop.domain.Pizza>() {
            public com.lazyman.roo.pizzershop.domain.Pizza convert(java.lang.Long id) {
                return Pizza.findPizza(id);
            }
        };
    }
    
    public Converter<String, Pizza> ApplicationConversionServiceFactoryBean.getStringToPizzaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.lazyman.roo.pizzershop.domain.Pizza>() {
            public com.lazyman.roo.pizzershop.domain.Pizza convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Pizza.class);
            }
        };
    }
    
    public Converter<PizzaOrder, String> ApplicationConversionServiceFactoryBean.getPizzaOrderToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.lazyman.roo.pizzershop.domain.PizzaOrder, java.lang.String>() {
            public String convert(PizzaOrder pizzaOrder) {
                return new StringBuilder().append(pizzaOrder.getName()).append(' ').append(pizzaOrder.getAddress()).append(' ').append(pizzaOrder.getTotal()).append(' ').append(pizzaOrder.getDeliveryDate()).toString();
            }
        };
    }
    
    public Converter<Long, PizzaOrder> ApplicationConversionServiceFactoryBean.getIdToPizzaOrderConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.lazyman.roo.pizzershop.domain.PizzaOrder>() {
            public com.lazyman.roo.pizzershop.domain.PizzaOrder convert(java.lang.Long id) {
                return PizzaOrder.findPizzaOrder(id);
            }
        };
    }
    
    public Converter<String, PizzaOrder> ApplicationConversionServiceFactoryBean.getStringToPizzaOrderConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.lazyman.roo.pizzershop.domain.PizzaOrder>() {
            public com.lazyman.roo.pizzershop.domain.PizzaOrder convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), PizzaOrder.class);
            }
        };
    }
    
    public Converter<Topping, String> ApplicationConversionServiceFactoryBean.getToppingToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.lazyman.roo.pizzershop.domain.Topping, java.lang.String>() {
            public String convert(Topping topping) {
                return new StringBuilder().append(topping.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Topping> ApplicationConversionServiceFactoryBean.getIdToToppingConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.lazyman.roo.pizzershop.domain.Topping>() {
            public com.lazyman.roo.pizzershop.domain.Topping convert(java.lang.Long id) {
                return Topping.findTopping(id);
            }
        };
    }
    
    public Converter<String, Topping> ApplicationConversionServiceFactoryBean.getStringToToppingConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.lazyman.roo.pizzershop.domain.Topping>() {
            public com.lazyman.roo.pizzershop.domain.Topping convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Topping.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getBaseToStringConverter());
        registry.addConverter(getIdToBaseConverter());
        registry.addConverter(getStringToBaseConverter());
        registry.addConverter(getPizzaToStringConverter());
        registry.addConverter(getIdToPizzaConverter());
        registry.addConverter(getStringToPizzaConverter());
        registry.addConverter(getPizzaOrderToStringConverter());
        registry.addConverter(getIdToPizzaOrderConverter());
        registry.addConverter(getStringToPizzaOrderConverter());
        registry.addConverter(getToppingToStringConverter());
        registry.addConverter(getIdToToppingConverter());
        registry.addConverter(getStringToToppingConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
