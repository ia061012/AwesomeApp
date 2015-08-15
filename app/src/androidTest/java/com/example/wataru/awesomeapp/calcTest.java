package com.example.wataru.awesomeapp;

import org.junit.Test;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

/**
 * Created by wataru on 2015/08/10.
 */
public class calcTest {
    @Test
    public void addで3と４をの加算結果が取得できる() throws Exception {
        Calc sut = new Calc();
        double expected = 7;
        double actual = sut.add(3, 4);
        assertThat(actual, is (expected));

    }
}