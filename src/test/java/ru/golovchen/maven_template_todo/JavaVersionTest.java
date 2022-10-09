package ru.golovchen.maven_template_todo;

import org.junit.Test;

import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * @author Dmitry Golovchenko
 */
public class JavaVersionTest {

    @Test
    public void testJava8IsSupported() {
        Stream.of(1, 2).map(i -> i * 2).collect(Collectors.toList());
    }

    @Test
    public void testJava11IsSupported() {
        var a = Integer.valueOf(32);
    }

}