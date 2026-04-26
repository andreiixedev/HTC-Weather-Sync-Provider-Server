.class public Lcom/htc/sync/provider/weather/ServiceURLHelper;
.super Ljava/lang/Object;
.source "ServiceURLHelper.java"


# static fields
.field private static final DEFAULT_findCityName:Ljava/lang/String; = "http://192.168.0.200:4000/widget/htc2/city-find.asp"

.field private static final DEFAULT_getBookmark:Ljava/lang/String; = "http://192.168.0.200:4000/?p=htcfav"

.field private static final DEFAULT_getMoreDetails:Ljava/lang/String; = "http://192.168.0.200:4000/m/details1.aspx"

.field private static final DEFAULT_getWTByGeo:Ljava/lang/String; = "http://192.168.0.200:4000/widget/htc2/weather-data.asp"

.field private static final DEFAULT_getWeatherByCity:Ljava/lang/String;

.field private static final DEFAULT_getWeatherByGeo:Ljava/lang/String;

.field private static final DEFAULT_version:Ljava/lang/String; = "01.000"

.field private static final KEY_DATA_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final KEY_DATA_VERSION:Ljava/lang/String; = "version"

.field private static final KEY_FIND_CITY_NAME:Ljava/lang/String; = "findCityName"

.field private static final KEY_GET_BOOKMARK:Ljava/lang/String; = "getBookmark"

.field private static final KEY_GET_MORE_DETAILS:Ljava/lang/String; = "getMoreDetails"

.field private static final KEY_GET_VENDOR_LOGO:Ljava/lang/String; = "GetVendorLogo"

.field private static final KEY_GET_WEATHER_BY_CITY:Ljava/lang/String; = "getWeatherByCity"

.field private static final KEY_GET_WEATHER_BY_GEO:Ljava/lang/String; = "getWeatherByGeo"

.field private static final KEY_GET_WT_BY_GEO:Ljava/lang/String; = "getWTByGeo"

.field private static final KEY_TIMESTAMP_FOR_LASTVERSION:Ljava/lang/String; = "timestamp_for_lastversion"

.field public static final LOG_FLAG:Z

.field private static final LOG_PREFIX:Ljava/lang/String; = "[ServiceURLHelper] "

.field public static final LOG_TAG:Ljava/lang/String; = "WSP"

.field private static WCRDATA_GetVendorLogo:Ljava/lang/String; = null

.field private static final WCRDATA_PREFS_NAME:Ljava/lang/String; = "wcrdata"

.field private static WCRDATA_findCityName:Ljava/lang/String;

.field private static WCRDATA_getBookmark:Ljava/lang/String;

.field private static WCRDATA_getMoreDetails:Ljava/lang/String;

.field private static WCRDATA_getWTByGeo:Ljava/lang/String;

.field private static WCRDATA_getWeatherByCity:Ljava/lang/String;

.field private static WCRDATA_getWeatherByGeo:Ljava/lang/String;

.field private static WCRDATA_timestamp:J

.field private static WCRDATA_version:Ljava/lang/String;

.field private static WCR_timestamp_lastversion:J

.field private static isUsingWCRUrl:Z

.field private static langMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v1, 0x0

    sget-boolean v0, Lcom/htc/sync/provider/weather/Helper;->LOG_FLAG:Z

    sput-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    invoke-static {}, Lcom/htc/sync/provider/weather/Helper;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://192.168.0.200:4000/widget/htctablet/weather-data.asp"

    :goto_0
    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->DEFAULT_getWeatherByCity:Ljava/lang/String;

    invoke-static {}, Lcom/htc/sync/provider/weather/Helper;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://192.168.0.200:4000/widget/htctablet/weather-data.asp"

    :goto_1
    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->DEFAULT_getWeatherByGeo:Ljava/lang/String;

    sput-wide v1, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_timestamp:J

    sput-wide v1, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCR_timestamp_lastversion:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "en"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "es"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "fr"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "da"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "pt"

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "nl"

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "nb"

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "it"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "de"

    const-string v2, "9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "sv"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "fi"

    const-string v2, "11"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "sk"

    const-string v2, "17"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "ro"

    const-string v2, "18"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "cs"

    const-string v2, "19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "hu"

    const-string v2, "20"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "pl"

    const-string v2, "21"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "ca"

    const-string v2, "22"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "hi"

    const-string v2, "24"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "ru"

    const-string v2, "25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "ar"

    const-string v2, "26"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "el"

    const-string v2, "27"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "ja"

    const-string v2, "29"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "ko"

    const-string v2, "30"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "tr"

    const-string v2, "31"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "iw"

    const-string v2, "33"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "sl"

    const-string v2, "34"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "uk"

    const-string v2, "35"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "in"

    const-string v2, "36"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "bg"

    const-string v2, "37"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "et"

    const-string v2, "38"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "hr"

    const-string v2, "39"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "lt"

    const-string v2, "41"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "lv"

    const-string v2, "42"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "sr"

    const-string v2, "43"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "th"

    const-string v2, "47"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    const-string v1, "vi"

    const-string v2, "48"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string v0, "http://192.168.0.200:4000/widget/htc2/weather-data.asp"

    goto/16 :goto_0

    :cond_1
    const-string v0, "http://192.168.0.200:4000/widget/htc2/weather-data.asp"

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkWCRUrl(Landroid/content/Context;)Z
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    const-string v3, "wcrdata"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "timestamp_for_lastversion"

    invoke-interface {v3, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCR_timestamp_lastversion:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v3, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCR_timestamp_lastversion:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0x5265c00

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    sget-boolean v3, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v3, :cond_0

    const-string v3, "WSP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ServiceURLHelper] (stamp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCR_timestamp_lastversion:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), do not check again within one day, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCR_timestamp_lastversion:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-boolean v3, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v3, :cond_2

    const-string v3, "WSP"

    const-string v4, "[ServiceURLHelper] request WCR for url update"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p0}, Lcom/htc/sync/provider/weather/ServiceURLHelper;->requestWCRUpdate(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    sput-boolean v3, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    goto :goto_0

    :cond_3
    sget-boolean v3, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v3, :cond_4

    const-string v3, "WSP"

    const-string v4, "[ServiceURLHelper] not updated, try reloading WCRDATA..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sput-wide v7, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_timestamp:J

    invoke-static {p0}, Lcom/htc/sync/provider/weather/ServiceURLHelper;->loadWCRDATA(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static findCityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_findCityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wcrdata"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "findCityName"

    const-string v2, "http://192.168.0.200:4000/widget/htc2/city-find.asp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_findCityName:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_findCityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_findCityName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "http://192.168.0.200:4000/widget/htc2/city-find.asp"

    goto :goto_0
.end method

.method public static getBookmark(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getBookmark:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wcrdata"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getBookmark"

    const-string v2, "http://192.168.0.200:4000/?p=htcfav"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getBookmark:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getBookmark:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getBookmark:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "http://192.168.0.200:4000/?p=htcfav"

    goto :goto_0
.end method

.method public static getLangId(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v2, "en"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "28"

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "fr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "32"

    goto :goto_0

    :cond_1
    const-string v2, "zh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "TW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "HANT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "14"

    goto :goto_0

    :cond_3
    const-string v2, "CN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "HANS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string v2, "13"

    goto :goto_0

    :cond_5
    const-string v2, "HK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "12"

    goto :goto_0

    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/htc/sync/provider/weather/ServiceURLHelper;->langMapping:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getMoreDetails(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getMoreDetails:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wcrdata"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getMoreDetails"

    const-string v2, "http://192.168.0.200:4000/m/details1.aspx"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getMoreDetails:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getMoreDetails:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getMoreDetails:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "http://192.168.0.200:4000/m/details1.aspx"

    goto :goto_0
.end method

.method public static getWTByGeo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWTByGeo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wcrdata"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getWTByGeo"

    const-string v2, "http://192.168.0.200:4000/widget/htc2/weather-data.asp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWTByGeo:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWTByGeo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWTByGeo:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "http://192.168.0.200:4000/widget/htc2/weather-data.asp"

    goto :goto_0
.end method

.method public static getWeatherByCity(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByCity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wcrdata"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getWeatherByCity"

    sget-object v2, Lcom/htc/sync/provider/weather/ServiceURLHelper;->DEFAULT_getWeatherByCity:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByCity:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByCity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByCity:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->DEFAULT_getWeatherByCity:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getWeatherByGeo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByGeo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wcrdata"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getWeatherByGeo"

    sget-object v2, Lcom/htc/sync/provider/weather/ServiceURLHelper;->DEFAULT_getWeatherByGeo:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByGeo:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByGeo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByGeo:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->DEFAULT_getWeatherByGeo:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isUsingWCRUrl()Z
    .locals 3

    sget-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "WSP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ServiceURLHelper] isusingWCRUrl(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    return v0
.end method

.method public static loadWCRDATA(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    sget-wide v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_timestamp:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    const-string v0, "wcrdata"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_timestamp:J

    sget-wide v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_timestamp:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    const-string v0, "wcrdata"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getWeatherByCity"

    sget-object v2, Lcom/htc/sync/provider/weather/ServiceURLHelper;->DEFAULT_getWeatherByCity:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByCity:Ljava/lang/String;

    const-string v0, "wcrdata"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getWeatherByGeo"

    sget-object v2, Lcom/htc/sync/provider/weather/ServiceURLHelper;->DEFAULT_getWeatherByGeo:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByGeo:Ljava/lang/String;

    const-string v0, "wcrdata"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getMoreDetails"

    const-string v2, "http://192.168.0.200:4000/m/details1.aspx"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getMoreDetails:Ljava/lang/String;

    const-string v0, "wcrdata"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "findCityName"

    const-string v2, "http://192.168.0.200:4000/widget/htc2/city-find.asp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_findCityName:Ljava/lang/String;

    const-string v0, "wcrdata"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getWTByGeo"

    const-string v2, "http://192.168.0.200:4000/widget/htc2/weather-data.asp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWTByGeo:Ljava/lang/String;

    const-string v0, "wcrdata"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getBookmark"

    const-string v2, "http://192.168.0.200:4000/?p=htcfav"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getBookmark:Ljava/lang/String;

    const-string v0, "wcrdata"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "version"

    const-string v2, "01.000"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_version:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    sget-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "WSP"

    const-string v1, "[ServiceURLHelper] load WCRDATA from shared preference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, ""

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_GetVendorLogo:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByCity:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByGeo:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getMoreDetails:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_findCityName:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWTByGeo:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getBookmark:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_version:Ljava/lang/String;

    sput-boolean v3, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "WSP"

    const-string v1, "[ServiceURLHelper] use WCRDATA in memeoy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static requestWCRUpdate(Landroid/content/Context;)Z
    .locals 36

    const-string v31, "ro.mid"

    invoke-static/range {v31 .. v31}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v26, ""

    :try_start_0
    const-string v31, "ro.product.version"

    invoke-static/range {v31 .. v31}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v32, "\\."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_0

    const/16 v31, 0x2

    aget-object v26, v27, v31
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_1

    const-string v26, "0"

    :cond_1
    const-string v31, "ro.cid"

    invoke-static/range {v31 .. v31}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v28, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_version:Ljava/lang/String;

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_2

    const-string v31, "wcrdata"

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v31

    const-string v32, "version"

    const-string v33, "01.000"

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    :cond_2
    const-string v31, "wcr.weather.test"

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    if-eqz v31, :cond_a

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "http://192.168.0.200:4000/wcr/weather?mid="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "&sku="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "&cid="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "&vs="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_1
    sget-boolean v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v31, :cond_3

    const-string v31, "WSP"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[ServiceURLHelper] WCR request: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_1
    new-instance v31, Ljava/net/URL;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    const/16 v31, 0x1388

    move/from16 v0, v31

    invoke-virtual {v13, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v31, 0x1388

    move/from16 v0, v31

    invoke-virtual {v13, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v13}, Ljava/net/URLConnection;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v31

    const/16 v32, 0xc8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2b

    sget-boolean v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v31, :cond_4

    const-string v31, "WSP"

    const-string v32, "[ServiceURLHelper] response code: 200"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    const/4 v15, 0x0

    const/16 v30, 0x0

    :try_start_3
    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    if-eqz v15, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v25, Ljava/io/BufferedReader;

    new-instance v31, Ljava/io/InputStreamReader;

    const-string v32, "latin1"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v0, v15, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_2
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_b

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0xa

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v31

    if-eqz v15, :cond_5

    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v31
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v31

    if-eqz v13, :cond_6

    :try_start_5
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v31
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v9

    sget-boolean v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v31, :cond_7

    const-string v31, "WSP"

    const-string v32, "[ServiceURLHelper] connect to WCR failed"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_3
    const/16 v31, 0x0

    :cond_9
    :goto_4
    return v31

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_a
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "http://192.168.0.200:4000/wcr/weather?mid="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "&sku="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "&cid="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "&vs="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_1

    :cond_b
    :try_start_6
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v30

    :cond_c
    if-eqz v15, :cond_d

    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_d
    if-eqz v30, :cond_12

    :try_start_8
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v31, "urls"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    const/4 v14, 0x0

    :goto_5
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v31

    move/from16 v0, v31

    if-ge v14, v0, :cond_18

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string v31, "getWeatherByCity"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByCity:Ljava/lang/String;

    :cond_e
    :goto_6
    sget-boolean v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v31, :cond_f

    const-string v31, "WSP"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[ServiceURLHelper] [Link "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "] name: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " value: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v33

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v34

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    :cond_10
    const-string v31, "getWeatherByGeo"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByGeo:Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6

    :catch_2
    move-exception v8

    :try_start_9
    sget-boolean v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v31, :cond_11

    const-string v31, "WSP"

    const-string v32, "[ServiceURLHelper] parse WCRDATA exception"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_12
    :goto_7
    if-eqz v13, :cond_8

    :try_start_a
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_3

    :cond_13
    :try_start_b
    const-string v31, "getMoreDetails"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_14

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getMoreDetails:Ljava/lang/String;

    goto/16 :goto_6

    :cond_14
    const-string v31, "findCityName"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_15

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_findCityName:Ljava/lang/String;

    goto/16 :goto_6

    :cond_15
    const-string v31, "getWTByGeo"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWTByGeo:Ljava/lang/String;

    goto/16 :goto_6

    :cond_16
    const-string v31, "getBookmark"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getBookmark:Ljava/lang/String;

    goto/16 :goto_6

    :cond_17
    const-string v31, "GetVendorLogo"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_e

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_GetVendorLogo:Ljava/lang/String;

    goto/16 :goto_6

    :cond_18
    const-string v31, "version"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_version:Ljava/lang/String;

    sget-boolean v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v31, :cond_19

    const-string v31, "WSP"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[ServiceURLHelper] [Version]: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_version:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_GetVendorLogo:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1a

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByCity:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1a

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByGeo:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1a

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getMoreDetails:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1a

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_findCityName:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1a

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWTByGeo:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1a

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getBookmark:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1a

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_version:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_1c

    :cond_1a
    sget-boolean v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v31, :cond_1b

    const-string v31, "WSP"

    const-string v32, "[ServiceURLHelper] WCRDATA integrity check failed!"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_1b
    const/16 v31, 0x0

    if-eqz v13, :cond_9

    :try_start_c
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_4

    :cond_1c
    const/4 v12, 0x0

    :try_start_d
    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_GetVendorLogo:Ljava/lang/String;

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_GetVendorLogo:Ljava/lang/String;

    add-int/lit8 v32, v16, 0x1

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v21

    const/4 v7, 0x0

    :try_start_e
    new-instance v31, Ljava/net/URL;

    sget-object v32, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_GetVendorLogo:Ljava/lang/String;

    invoke-direct/range {v31 .. v32}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v31

    move-object/from16 v0, v31

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-result-object v11

    const/16 v31, 0x200

    :try_start_f
    move/from16 v0, v31

    new-array v4, v0, [B

    const/16 v19, 0x0

    :goto_8
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v19

    if-lez v19, :cond_22

    const/16 v31, 0x0

    move/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v11, v4, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v31

    if-eqz v11, :cond_1d

    :try_start_10
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    :cond_1d
    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_1e
    throw v31
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :catch_3
    move-exception v8

    :try_start_11
    sget-boolean v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v31, :cond_1f

    const-string v31, "WSP"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[ServiceURLHelper] exception while download image: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :cond_1f
    if-eqz v7, :cond_20

    :try_start_12
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_20
    :goto_9
    if-nez v12, :cond_26

    sget-boolean v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v31, :cond_21

    const-string v31, "WSP"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[ServiceURLHelper] image download failed, "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_GetVendorLogo:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :cond_21
    const/16 v31, 0x0

    if-eqz v13, :cond_9

    :try_start_13
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    goto/16 :goto_4

    :cond_22
    const/4 v12, 0x1

    if-eqz v11, :cond_23

    :try_start_14
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    :cond_23
    if-eqz v3, :cond_24

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :cond_24
    if-eqz v7, :cond_20

    :try_start_15
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_9

    :catchall_3
    move-exception v31

    if-eqz v7, :cond_25

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_25
    throw v31

    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sput-wide v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_timestamp:J

    sget-boolean v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v31, :cond_27

    const-string v31, "WSP"

    const-string v32, "[ServiceURLHelper] save WCRDATA to shared preference"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const-string v31, "wcrdata"

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v31, "getWeatherByCity"

    sget-object v32, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByCity:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v31, "getWeatherByGeo"

    sget-object v32, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByGeo:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v31, "getMoreDetails"

    sget-object v32, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getMoreDetails:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v31, "findCityName"

    sget-object v32, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_findCityName:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v31, "getWTByGeo"

    sget-object v32, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWTByGeo:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v31, "getBookmark"

    sget-object v32, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getBookmark:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v31, "version"

    sget-object v32, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_version:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v31, "timestamp"

    sget-wide v32, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_timestamp:J

    move-object/from16 v0, v31

    move-wide/from16 v1, v32

    invoke-interface {v10, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-boolean v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v31, :cond_28

    const-string v31, "WSP"

    const-string v32, "[ServiceURLHelper] WCRDATA saved"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    sget-boolean v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v31, :cond_29

    const-string v31, "WSP"

    const-string v32, "[ServiceURLHelper] save WCRDATA to system settings"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->setWCRGetVendorLogo(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByCity:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->setWCRGetWeatherByCity(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByGeo:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->setWCRGetWeatherByGeo(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getMoreDetails:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->setWCRGetMoreDetails(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_findCityName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->setWCRFindCityName(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWTByGeo:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->setWCRGetWTByGeo(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getBookmark:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->setWCRGetBookmark(Landroid/content/Context;Ljava/lang/String;)Z

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->setUsingWCRFlag(Landroid/content/Context;Z)Z

    sget-boolean v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v31, :cond_2a

    const-string v31, "WSP"

    const-string v32, "[ServiceURLHelper] system settings saved"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :cond_2a
    const/16 v31, 0x1

    if-eqz v13, :cond_9

    :try_start_16
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    goto/16 :goto_4

    :cond_2b
    :try_start_17
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v31

    const/16 v32, 0x194

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2e

    sget-boolean v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v31, :cond_2c

    const-string v31, "WSP"

    const-string v32, "[ServiceURLHelper] response code: 404"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    sget-boolean v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v31, :cond_2d

    const-string v31, "WSP"

    const-string v32, "[ServiceURLHelper] save timestamp for file not found"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sput-wide v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCR_timestamp_lastversion:J

    const-string v31, "wcrdata"

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    const-string v32, "timestamp_for_lastversion"

    sget-wide v33, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCR_timestamp_lastversion:J

    invoke-interface/range {v31 .. v34}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_7

    :cond_2e
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v31

    const/16 v32, 0x130

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_12

    sget-boolean v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v31, :cond_2f

    const-string v31, "WSP"

    const-string v32, "[ServiceURLHelper] response code: 304"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    sget-boolean v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->LOG_FLAG:Z

    if-eqz v31, :cond_30

    const-string v31, "WSP"

    const-string v32, "[ServiceURLHelper] save timestamp for last version"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sput-wide v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCR_timestamp_lastversion:J

    const-string v31, "wcrdata"

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    const-string v32, "timestamp_for_lastversion"

    sget-wide v33, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCR_timestamp_lastversion:J

    invoke-interface/range {v31 .. v34}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto/16 :goto_7
.end method