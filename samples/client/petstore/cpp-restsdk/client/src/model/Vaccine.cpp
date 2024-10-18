/**
 * OpenAPI Petstore
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 *
 * The version of the OpenAPI document: 1.0.0
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 7.10.0-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "CppRestPetstoreClient/model/Vaccine.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {


Vaccine::Vaccine()
{
    m_dateIsSet = false;
    m_BoosterRequired = false;
    m_BoosterRequiredIsSet = false;
}

Vaccine::~Vaccine()
{
}

void Vaccine::validate()
{
    // TODO: implement validation
}

web::json::value Vaccine::toJson() const
{
    web::json::value val = web::json::value::object();
    
    if(m_dateIsSet)
    {   
        
        val[utility::conversions::to_string_t(U("date"))] = ModelBase::toJson(m_date);
    }
    
    if(m_BoosterRequiredIsSet)
    {   
        
        val[utility::conversions::to_string_t(U("boosterRequired"))] = ModelBase::toJson(m_BoosterRequired);
    }
    

    return val;
}

bool Vaccine::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t(U("date"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("date")));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<AnyType> refVal_setDate;
            ok &= ModelBase::fromJson(fieldValue, refVal_setDate);
            setDate(refVal_setDate);
            
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("boosterRequired"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("boosterRequired")));
        if(!fieldValue.is_null())
        {
            bool refVal_setBoosterRequired;
            ok &= ModelBase::fromJson(fieldValue, refVal_setBoosterRequired);
            setBoosterRequired(refVal_setBoosterRequired);
            
        }
    }
    return ok;
}

void Vaccine::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m_dateIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("date")), m_date));
        
    }
    if(m_BoosterRequiredIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("boosterRequired")), m_BoosterRequired));
        
    }
}

bool Vaccine::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("date"))))
    {
        std::shared_ptr<AnyType> refVal_setDate;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("date"))), refVal_setDate );
        setDate(refVal_setDate);
        
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("boosterRequired"))))
    {
        bool refVal_setBoosterRequired;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("boosterRequired"))), refVal_setBoosterRequired );
        setBoosterRequired(refVal_setBoosterRequired);
        
    }
    return ok;
}




std::shared_ptr<AnyType> Vaccine::getDate() const
{
    return m_date;
}


void Vaccine::setDate(const std::shared_ptr<AnyType>& value)
{
    m_date = value;
    m_dateIsSet = true;
}

bool Vaccine::dateIsSet() const
{
    return m_dateIsSet;
}

void Vaccine::unsetdate()
{
    m_dateIsSet = false;
}

bool Vaccine::isBoosterRequired() const
{
    return m_BoosterRequired;
}

void Vaccine::setBoosterRequired(bool value)
{
    m_BoosterRequired = value;
    m_BoosterRequiredIsSet = true;
}

bool Vaccine::boosterRequiredIsSet() const
{
    return m_BoosterRequiredIsSet;
}

void Vaccine::unsetBoosterRequired()
{
    m_BoosterRequiredIsSet = false;
}

}
}
}
}


