class BaseActions

      def click_name(value)
        $driver.find_element(:name, "#{value}").click
      end

      def click_id(value)
        $driver.find_element(:id, "#{value}").click
      end

      def click_xpath(value)
        $driver.find_element(:xpath, "#{value}").click
      end

      def click_accessibility_id(value)
        $driver.find_element(:accessibility_id, "#{value}").click
      end

      def click_text(value)
        $driver.find_element(:text, "#{value}").click
      end

      def wait(quantity)
        quantity.times do
          sleep 0.5
        end
      end

      def send_keys_id(id, field)
        @driver.find_element(:id, id).send_keys(field)
      end

      def send_keys_xpath(xpath, field)
        @driver.find_element(:xpath, xpath).send_keys(field)
      end

      def send_keys_accessibility_id(accessibility_id, field)
        @driver.find_element(:accessibility_id, accessibility_id).send_keys(field)
      end

      def element_on_screen?(element)
        get_element(element).is_displayed?
      end

      def text_of_id(value, index)
        @driver.find_elements(:id, "#{value}")[index].text
      end

      def text_of_xpath(value, index)
        @driver.find_elements(:xpath, "#{value}")[index].text
      end

      def deslizar_devagar_para_cima
        Appium::TouchAction.new.long_press(x: 553, y: 1111).move_to(x: 548 , y: 461).release.perform
      end
    
      def deslizar_devagar_para_baixo
        Appium::TouchAction.new.swipe(start_x: 349, start_y: 614, end_x: 370, end_y: 1196, durattion: 600).perform
      end
      
end
