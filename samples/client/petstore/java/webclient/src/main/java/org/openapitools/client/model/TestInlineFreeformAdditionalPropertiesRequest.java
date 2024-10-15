/*
 * OpenAPI Petstore
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonTypeName;
import com.fasterxml.jackson.annotation.JsonValue;
import java.util.HashMap;
import java.util.Map;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.fasterxml.jackson.annotation.JsonTypeName;

/**
 * TestInlineFreeformAdditionalPropertiesRequest
 */
@JsonPropertyOrder({
  TestInlineFreeformAdditionalPropertiesRequest.JSON_PROPERTY_SOME_PROPERTY
})
@JsonTypeName("testInlineFreeformAdditionalProperties_request")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.10.0-SNAPSHOT")
public class TestInlineFreeformAdditionalPropertiesRequest extends HashMap<String, Object> {
  public static final String JSON_PROPERTY_SOME_PROPERTY = "someProperty";
  private String someProperty;

  public TestInlineFreeformAdditionalPropertiesRequest() {

  }

  public TestInlineFreeformAdditionalPropertiesRequest someProperty(String someProperty) {
    
    this.someProperty = someProperty;
    return this;
  }

  /**
   * Get someProperty
   * @return someProperty
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_SOME_PROPERTY)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public String getSomeProperty() {
    return someProperty;
  }


  @JsonProperty(JSON_PROPERTY_SOME_PROPERTY)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setSomeProperty(String someProperty) {
    this.someProperty = someProperty;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TestInlineFreeformAdditionalPropertiesRequest testInlineFreeformAdditionalPropertiesRequest = (TestInlineFreeformAdditionalPropertiesRequest) o;
    return Objects.equals(this.someProperty, testInlineFreeformAdditionalPropertiesRequest.someProperty) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(someProperty, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TestInlineFreeformAdditionalPropertiesRequest {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    someProperty: ").append(toIndentedString(someProperty)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

