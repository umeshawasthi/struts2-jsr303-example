package org.demo.actions;

import com.opensymphony.xwork2.ActionSupport;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.Size;

/**
 * <code>Set welcome message.</code>
 */
public class HelloAction extends ActionSupport {

    public String execute() throws Exception {
        return SUCCESS;
    }

    /**
     * Provide default valuie for Message property.
     */
    public static final String MESSAGE = "hello.message";

    /**
     * Field for Message property.
     */
    @NotBlank
    @Size(min = 10)
    private String message;

    /**
     * Return Message property.
     *
     * @return Message property
     */
    public String getMessage() {
        return message;
    }

    /**
     * Set Message property.
     *
     * @param message Text to display on HelloWorld page.
     */
    public void setMessage(String message) {
        this.message = message;
    }

}
