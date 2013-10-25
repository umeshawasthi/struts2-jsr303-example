package org.demo.validation.actions.dto;

import java.io.Serializable;

import com.github.umeshawasthi.struts2.jsr303.constraints.FieldMatch;

@FieldMatch.List({
    @FieldMatch(first="value1",second="value2",message="fields.notequal")
    
})
public class CrossFieldConstraintsDTO
    implements Serializable
{

    private static final long serialVersionUID = 1L;

    private String value1;

    private String value2;

    public String getValue1()
    {
        return this.value1;
    }

    public void setValue1( String value1 )
    {
        this.value1 = value1;
    }

    public String getValue2()
    {
        return this.value2;
    }

    public void setValue2( String value2 )
    {
        this.value2 = value2;
    }

}
