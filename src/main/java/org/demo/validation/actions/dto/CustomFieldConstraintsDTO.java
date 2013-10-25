package org.demo.validation.actions.dto;

import java.io.Serializable;

import org.demo.constraints.UpperCase;


public class CustomFieldConstraintsDTO
    implements Serializable
{

    private static final long serialVersionUID = 1L;

    @UpperCase(message="upper.case")
    private String value1;

    public String getValue1()
    {
        return this.value1;
    }

    public void setValue1( String value1 )
    {
        this.value1 = value1;
    }

    
}
