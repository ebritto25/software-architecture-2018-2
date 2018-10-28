package edu.utfpr.cp.sa.gui;

import lombok.Data;

@Data
public class CountryDTO {

	private long id;
    private String name;
    private String acronym;
    private int phoneDigits;
}
