.class public Lcom/htc/sync/provider/weather/ChinaWeatherData;
.super Ljava/lang/Object;
.source "ChinaWeatherData.java"


# static fields
.field private static final CHINA_URL_BASE:Ljava/lang/String; = "http://192.168.0.200:4000/china/weather?city="

.field private static final LOG_FLAG:Z

.field private static final LOG_FLAG_SECURITY:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ChinaWeatherParser"

.field private static final PREFIX:Ljava/lang/String; = "[xml] "

.field private static final TABLE_CONDITION_CHINA2ACCU:[I

.field private static final TABLE_NIGHT_CONDITION_CHINA2ACCU:[I

.field private static final TABLE_WEEK_CHINA2ACCU:[Ljava/lang/String;

.field private static final attrCondition:Ljava/lang/String; = "Weather"

.field private static final attrCurrentTemp:Ljava/lang/String; = "Temperature"

.field private static final attrDate:Ljava/lang/String; = "ForecastTime"

.field private static final attrFeelTemperature:Ljava/lang/String; = "FeelTemperature"

.field private static final attrHumidity:Ljava/lang/String; = "Humidity"

.field private static final attrMaxTemp:Ljava/lang/String; = "Tmax"

.field private static final attrMinTemp:Ljava/lang/String; = "Tmin"

.field private static final attrPressure:Ljava/lang/String; = "Pressure"

.field private static final attrSunrise:Ljava/lang/String; = "Sunrise"

.field private static final attrSunset:Ljava/lang/String; = "Sunset"

.field private static final attrTimeend:Ljava/lang/String; = "Timeend"

.field private static final attrTimestart:Ljava/lang/String; = "Timestart"

.field private static final attrVisibility:Ljava/lang/String; = "Visibility"

.field private static final attrWeek:Ljava/lang/String; = "Week"

.field private static final attrWindDir:Ljava/lang/String; = "WindDir"

.field private static final attrWindDirAngle:Ljava/lang/String; = "WindDirAngle"

.field private static final attrWindPower:Ljava/lang/String; = "WindPower"

.field private static final attrWindSpeed:Ljava/lang/String; = "WindSpeed"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v1, 0x36

    sget-boolean v0, Lcom/htc/sync/provider/weather/Helper;->LOG_FLAG:Z

    sput-boolean v0, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/sync/provider/weather/ChinaWeatherData;->TABLE_CONDITION_CHINA2ACCU:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/sync/provider/weather/ChinaWeatherData;->TABLE_NIGHT_CONDITION_CHINA2ACCU:[I

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "nop"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Mon"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Tue"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Wed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Thu"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Fri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Sat"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Sun"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sync/provider/weather/ChinaWeatherData;->TABLE_WEEK_CHINA2ACCU:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x6
        0x8
        0xc
        0xf
        0x33
        0x1d
        0xe
        0xd
        0x12
        0x11
        0x10
        0xf
        0x15
        0x15
        0x14
        0x13
        0x16
        0xb
        0x1a
        0x34
        0xd
        0x12
        0x11
        0x10
        0xf
        0x14
        0x13
        0x16
        0x35
        0x34
        0x34
        0x20
        0x36
        0x13
        0xb
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x21
        0x26
        0x8
        0xc
        0xf
        0x33
        0x1d
        0x27
        0x28
        0x12
        0x29
        0x2a
        0xf
        0x2b
        0x2b
        0x2b
        0x13
        0x16
        0xb
        0x1a
        0x34
        0x28
        0x12
        0x29
        0x2a
        0xf
        0x2b
        0x13
        0x16
        0x35
        0x34
        0x34
        0x20
        0x36
        0x13
        0xb
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x25
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private China2AccuCondition(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v1, "0"

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    sget-object v4, Lcom/htc/sync/provider/weather/ChinaWeatherData;->TABLE_CONDITION_CHINA2ACCU:[I

    array-length v4, v4

    if-ge v3, v4, :cond_0

    sget-object v4, Lcom/htc/sync/provider/weather/ChinaWeatherData;->TABLE_CONDITION_CHINA2ACCU:[I

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v4, "ChinaWeatherParser"

    const-string v5, "[xml] China2AccuCondition value out of bounds"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v1, "0"

    const-string v4, "ChinaWeatherParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[xml] China2AccuCondition parse error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private China2AccuConditionWithNight(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v2, "nop"

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "Asia/Hong_Kong"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v4

    if-ltz v5, :cond_1

    sget-object v6, Lcom/htc/sync/provider/weather/ChinaWeatherData;->TABLE_CONDITION_CHINA2ACCU:[I

    array-length v6, v6

    if-ge v5, v6, :cond_1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x6

    if-le v4, v6, :cond_0

    const/16 v6, 0x12

    if-ge v4, v6, :cond_0

    sget-object v6, Lcom/htc/sync/provider/weather/ChinaWeatherData;->TABLE_CONDITION_CHINA2ACCU:[I

    aget v6, v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    sget-object v6, Lcom/htc/sync/provider/weather/ChinaWeatherData;->TABLE_NIGHT_CONDITION_CHINA2ACCU:[I

    aget v6, v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v6, "ChinaWeatherParser"

    const-string v7, "[xml] China2AccuConditionWithNight value out of bounds"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v2, "nop"

    const-string v6, "ChinaWeatherParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[xml] China2AccuConditionWithNight parse error="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private China2AccuHourTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v1, 0xc

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xb

    if-le v0, v2, :cond_1

    add-int/lit8 v0, v0, -0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_2
.end method

.method private China2AccuNightCondition(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v1, "0"

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    sget-object v4, Lcom/htc/sync/provider/weather/ChinaWeatherData;->TABLE_CONDITION_CHINA2ACCU:[I

    array-length v4, v4

    if-ge v3, v4, :cond_0

    sget-object v4, Lcom/htc/sync/provider/weather/ChinaWeatherData;->TABLE_NIGHT_CONDITION_CHINA2ACCU:[I

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v4, "ChinaWeatherParser"

    const-string v5, "[xml] China2AccuNightCondition value out of bounds"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v1, "0"

    const-string v4, "ChinaWeatherParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[xml] China2AccuNightCondition parse error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private _parseItemCF(Lorg/w3c/dom/NodeList;Lcom/htc/util/weather/WSPPData;)V
    .locals 15

    const/4 v9, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v10, :cond_b

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    instance-of v12, v8, Lorg/w3c/dom/Element;

    if-nez v12, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v8

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    const-string v12, "Period"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    sget-boolean v12, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v12, :cond_2

    const-string v12, "ChinaWeatherParser"

    const-string v13, "[xml] ------------------------------------------------------"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v12, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v12, :cond_3

    const-string v12, "ChinaWeatherParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[xml] Date="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ForecastTime"

    invoke-interface {v5, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v12, "TimeStart"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    sget-boolean v12, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v12, :cond_4

    const-string v12, "ChinaWeatherParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[xml] Week="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Week"

    invoke-interface {v5, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v12, "TimeEnd"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    sget-boolean v12, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v12, :cond_5

    const-string v12, "ChinaWeatherParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[xml] Condtition="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Weather"

    invoke-interface {v5, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v12, "Weather"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    sget-boolean v12, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v12, :cond_6

    const-string v12, "ChinaWeatherParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[xml] MinTemp="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Tmin"

    invoke-interface {v5, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v12, "Tmin"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    sget-boolean v12, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v12, :cond_7

    const-string v12, "ChinaWeatherParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[xml] MaxTemp="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Tmax"

    invoke-interface {v5, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v12, "Tmax"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    sget-boolean v12, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v12, :cond_8

    const-string v12, "ChinaWeatherParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[xml] WindDir="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "WindDir"

    invoke-interface {v5, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v12, "WindDir"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    sget-boolean v12, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v12, :cond_9

    const-string v12, "ChinaWeatherParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[xml] WindPower="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "WindPower"

    invoke-interface {v5, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v12, "WindPower"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    if-nez v9, :cond_a

    const-string v12, "Weather"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->China2AccuCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/htc/util/weather/WSPData;->setCurConditionId(Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v9, v9, 0x1

    const-string v12, "Week"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->value2Week(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPData;->getFstName()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v12

    const-string v13, "ForecastTime"

    invoke-interface {v5, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v12, "Weather"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->China2AccuCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPData;->getFstConditionId()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v12, "Tmax"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPData;->getFstHighTempC()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {p0, v2}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->f2i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPData;->getFstHighTempF()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {p0, v2}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->c2f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v12, "Tmin"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPData;->getFstLowTempC()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {p0, v3}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->f2i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPData;->getFstLowTempF()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {p0, v3}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->c2f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getFstFeelHighTempC()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {p0, v2}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->f2i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getFstFeelHighTempF()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {p0, v2}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->c2f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getFstFeelLowTempC()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {p0, v3}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->f2i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getFstFeelLowTempF()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {p0, v3}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->c2f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getFstPrecip()Ljava/util/ArrayList;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getFstNightConditionId()Ljava/util/ArrayList;

    move-result-object v12

    const-string v13, "Weather"

    invoke-interface {v5, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->China2AccuNightCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getFstNightHighTempC()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {p0, v2}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->f2i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getFstNightHighTempF()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {p0, v2}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->c2f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getFstNightLowTempC()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {p0, v3}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->f2i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getFstNightLowTempF()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {p0, v3}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->c2f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getFstNightFeelHighTempC()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {p0, v2}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->f2i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getFstNightFeelHighTempF()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {p0, v2}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->c2f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getFstNightFeelLowTempC()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {p0, v3}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->f2i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getFstNightFeelLowTempF()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {p0, v3}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->c2f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getFstNightPrecip()Ljava/util/ArrayList;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    return-void
.end method

.method private _parseItemCF3h(Lorg/w3c/dom/NodeList;Lcom/htc/util/weather/WSPPData;)V
    .locals 16

    sget-boolean v12, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v12, :cond_0

    const-string v12, "ChinaWeatherParser"

    const-string v13, "[xml] <CF3h><Info---------------------------------------------------"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v8, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v11, :cond_6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    instance-of v12, v7, Lorg/w3c/dom/Element;

    if-nez v12, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v7

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    const/16 v12, 0x8

    if-ge v8, v12, :cond_1

    const-string v12, "Period"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "Timestart"

    invoke-interface {v4, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v9, 0x0

    :goto_2
    const/4 v12, 0x3

    if-ge v9, v12, :cond_5

    const-string v12, "Timestart"

    invoke-interface {v4, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->China2AccuHourTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getHourName()Ljava/util/ArrayList;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "a "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int v14, v10, v9

    rem-int/lit8 v14, v14, 0x18

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":00"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->China2AccuHourTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v12, "Weather"

    invoke-interface {v4, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int v12, v10, v9

    const/4 v13, 0x6

    if-le v12, v13, :cond_4

    add-int v12, v10, v9

    const/16 v13, 0x12

    if-ge v12, v13, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getHourConditionId()Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->China2AccuCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    const-string v12, "Temperature"

    invoke-interface {v4, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getHourTempC()Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->f2i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getHourTempF()Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->c2f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v12, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v12, :cond_3

    const-string v12, "ChinaWeatherParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[xml] HourTime="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "a "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int v15, v10, v9

    rem-int/lit8 v15, v15, 0x18

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":00"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->China2AccuHourTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", HourConditionId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->China2AccuCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", CurrentTempC="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->f2i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", CurrentTempF="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->c2f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getHourPrecip()Ljava/util/ArrayList;

    move-result-object v12

    const-string v13, "0"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getHourConditionId()Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->China2AccuNightCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_6
    sget-boolean v12, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v12, :cond_7

    const-string v12, "ChinaWeatherParser"

    const-string v13, "[xml] ---------------------------------------------------<CF3h>Info>"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private _parseItemCityMeteor(Lorg/w3c/dom/NodeList;Lcom/htc/util/weather/WSPPData;)V
    .locals 10

    const/4 v9, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_8

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v6, v3, Lorg/w3c/dom/Element;

    if-nez v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "StationInfo"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v6, :cond_2

    const-string v6, "ChinaWeatherParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[xml] StationID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "StationID"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v6, "StationID"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    const-string v6, "Longitude"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    const-string v6, "Latitude"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v6, "CF"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-boolean v6, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v6, :cond_4

    const-string v6, "ChinaWeatherParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[xml] ReportTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ReportTime"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v6, "ReportTime"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->_parseItemCF(Lorg/w3c/dom/NodeList;Lcom/htc/util/weather/WSPPData;)V

    goto :goto_1

    :cond_5
    const-string v6, "ZU"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "SK"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->_parseItemSK(Lorg/w3c/dom/NodeList;Lcom/htc/util/weather/WSPPData;)V

    goto/16 :goto_1

    :cond_6
    const-string v6, "CF3h"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "ReportTime"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sget-boolean v6, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v6, :cond_7

    const-string v6, "ChinaWeatherParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[xml] CF3h ReportTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ReportTime"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/htc/util/weather/WSPPData;->setCityLocalTime(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->_parseItemCF3h(Lorg/w3c/dom/NodeList;Lcom/htc/util/weather/WSPPData;)V

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method private _parseItemPeriod(Lorg/w3c/dom/NodeList;Lcom/htc/util/weather/WSPPData;)V
    .locals 6

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_5

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v5, v3, Lorg/w3c/dom/Element;

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Period"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->_parseItemPeriod(Lorg/w3c/dom/NodeList;Lcom/htc/util/weather/WSPPData;)V

    goto :goto_1

    :cond_2
    const-string v5, "CF"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "ReportTime"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->_parseItemCF(Lorg/w3c/dom/NodeList;Lcom/htc/util/weather/WSPPData;)V

    goto :goto_1

    :cond_3
    const-string v5, "ZU"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "ReportTime"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v5, "SK"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "ReportTime"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_5
    return-void
.end method

.method private _parseItemSK(Lorg/w3c/dom/NodeList;Lcom/htc/util/weather/WSPPData;)V
    .locals 19

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v14, :cond_e

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    instance-of v15, v10, Lorg/w3c/dom/Element;

    if-nez v15, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move-object v7, v10

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    const-string v15, "Info"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    sget-boolean v15, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v15, :cond_2

    const-string v15, "ChinaWeatherParser"

    const-string v16, "[xml] <SK> <Info------------------------------------------------------"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v15, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v15, :cond_3

    const-string v15, "ChinaWeatherParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[xml] Condition="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "Weather"

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v15, "Weather"

    invoke-interface {v7, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    sget-boolean v15, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v15, :cond_4

    const-string v15, "ChinaWeatherParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[xml] current tempture="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "Temperature"

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v15, "Temperature"

    invoke-interface {v7, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    sget-boolean v15, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v15, :cond_5

    const-string v15, "ChinaWeatherParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[xml] WindDir="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "WindDir"

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v15, "WindDir"

    invoke-interface {v7, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    sget-boolean v15, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v15, :cond_6

    const-string v15, "ChinaWeatherParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[xml] WindPower="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "WindPower"

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v15, "WindPower"

    invoke-interface {v7, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    sget-boolean v15, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v15, :cond_7

    const-string v15, "ChinaWeatherParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[xml] WindSpeed="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "WindSpeed"

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v15, "WindSpeed"

    invoke-interface {v7, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    sget-boolean v15, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v15, :cond_8

    const-string v15, "ChinaWeatherParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[xml] Humidity="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "Humidity"

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v15, "Humidity"

    invoke-interface {v7, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    const-string v15, "Weather"

    invoke-interface {v7, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->China2AccuConditionWithNight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v15, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v15, :cond_9

    const-string v15, "ChinaWeatherParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[xml] *Current condition="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v15, "nop"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/htc/util/weather/WSPData;->setCurConditionId(Ljava/lang/String;)V

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->dayLightFlagOfChinaCity()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/htc/util/weather/WSPPData;->setDayLightFlag(Ljava/lang/String;)V

    const-string v1, ""

    :try_start_0
    const-string v1, "Temperature"

    const-string v15, "Temperature"

    invoke-interface {v7, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/4 v15, 0x0

    cmpl-float v15, v5, v15

    if-ltz v15, :cond_b

    float-to-double v15, v5

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    add-double v15, v15, v17

    double-to-int v15, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/htc/util/weather/WSPData;->setCurTempC(I)V

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->c2f(F)I

    move-result v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/htc/util/weather/WSPData;->setCurTempF(I)V

    const-string v1, "FeelTemperature"

    const-string v15, "FeelTemperature"

    invoke-interface {v7, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v15, 0x0

    cmpl-float v15, v4, v15

    if-ltz v15, :cond_c

    float-to-double v15, v4

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    add-double v15, v15, v17

    double-to-int v15, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/htc/util/weather/WSPPData;->setCurFeelTempC(I)V

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->c2f(F)I

    move-result v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/htc/util/weather/WSPPData;->setCurFeelTempF(I)V

    const-string v1, "Humidity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Humidity"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "%"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/htc/util/weather/WSPPData;->setCurHumidity(Ljava/lang/String;)V

    const-string v1, "WindSpeed"

    const-string v15, "WindSpeed"

    invoke-interface {v7, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->ms2mi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/htc/util/weather/WSPPData;->setCurWindspeed(Ljava/lang/String;)V

    const-string v1, "WindDir"

    const-string v15, "WindDir"

    invoke-interface {v7, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->windDir2Text(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/htc/util/weather/WSPPData;->setCurWinddirection(Ljava/lang/String;)V

    const-string v1, "Visibility"

    const-string v15, "Visibility"

    invoke-interface {v7, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->kmToMi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/htc/util/weather/WSPPData;->setCurVisibility(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    const-string v1, "Sunrise"

    const-string v15, "Sunrise"

    invoke-interface {v7, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->toAMPM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v11, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getFstSunrise()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    float-to-double v15, v5

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    sub-double v15, v15, v17

    double-to-int v15, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/htc/util/weather/WSPData;->setCurTempC(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v6

    const-string v15, "ChinaWeatherParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[xml] parse error at: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    float-to-double v15, v4

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    sub-double v15, v15, v17

    double-to-int v15, v15

    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/htc/util/weather/WSPPData;->setCurFeelTempC(I)V

    goto/16 :goto_3

    :cond_d
    const-string v1, "Sunset"

    const-string v15, "Sunset"

    invoke-interface {v7, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->toAMPM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v11, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPPData;->getFstSunset()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_e
    return-void
.end method

.method private c2f(F)I
    .locals 4

    const/high16 v0, 0x41100000    # 9.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42000000    # 32.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private c2f(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v3, "nop"

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v4, 0x41100000    # 9.0f

    mul-float/2addr v4, v0

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x42000000    # 32.0f

    add-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    const-string v3, "nop"

    const-string v4, "ChinaWeatherParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[xml] c2f parse error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dayLightFlagOfChinaCity()Ljava/lang/String;
    .locals 4

    const-string v2, "Asia/Hong_Kong"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    const-string v2, "True"

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "False"

    goto :goto_0
.end method

.method private f2i(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-string v3, "nop"

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    float-to-double v4, v1

    add-double/2addr v4, v6

    double-to-int v4, v4

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    return-object v3

    :cond_0
    float-to-double v4, v1

    sub-double/2addr v4, v6

    double-to-int v4, v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "nop"

    const-string v4, "ChinaWeatherParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[xml] f2i parse error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private kmToMi(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    float-to-double v3, v1

    const-wide v5, 0x3fe3e2435696e58aL    # 0.62137

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private ms2mi(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    float-to-double v3, v2

    const-wide v5, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v3, v5

    const-wide v5, 0x3fe3e2435696e58aL    # 0.62137

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private toAMPM(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v4, 0xc

    const/16 v6, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    const/16 v5, 0xb

    if-le v1, v5, :cond_2

    add-int/lit8 v1, v1, -0xc

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_0

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ge v2, v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " PM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    return-object v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_3

    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ge v2, v6, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    move v4, v1

    goto :goto_4

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_5
.end method

.method private value2Week(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v2, "Empty"

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    sget-object v3, Lcom/htc/sync/provider/weather/ChinaWeatherData;->TABLE_WEEK_CHINA2ACCU:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    sget-object v3, Lcom/htc/sync/provider/weather/ChinaWeatherData;->TABLE_WEEK_CHINA2ACCU:[Ljava/lang/String;

    aget-object v2, v3, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "ERROR"

    const-string v3, "ChinaWeatherParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[xml] value2Week parse error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private windDir2Text(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string v2, "N"

    :goto_1
    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :pswitch_0
    const-string v2, "NE"

    goto :goto_1

    :pswitch_1
    const-string v2, "E"

    goto :goto_1

    :pswitch_2
    const-string v2, "SE"

    goto :goto_1

    :pswitch_3
    const-string v2, "S"

    goto :goto_1

    :pswitch_4
    const-string v2, "SW"

    goto :goto_1

    :pswitch_5
    const-string v2, "W"

    goto :goto_1

    :pswitch_6
    const-string v2, "NW"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public getChinaWeatherUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://htc-mobile.mywtv.cn/data_v2/getweatheru.asmx/getData?dataType=htc_v2&code=21D80C&sname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChinaWeatherParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[xml] HuaFeng url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getChinaWeatherUrlbyName()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v0, "http://htc-mobile.mywtv.cn/getweatheru.asmx/getData?dataType=htc&code=ED926B&city=beijing"

    const-string v1, "ChinaWeatherParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[xml] url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public isChinaWeatherItem(Lcom/htc/util/weather/WSPRequest;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-static {}, Lcom/htc/sync/provider/weather/Helper;->isChinaRegion()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\u4e2d\u56fd"

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\u53f0\u6e7e\u7701"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u53f0\u7063\u7701"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u9999\u6e2f"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u6fb3\u9580"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u6fb3\u95e8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getParam1()Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public parseChinaWeatherXml(Ljava/lang/String;Lcom/htc/util/weather/WSPPData;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_3

    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    instance-of v10, v8, Lorg/w3c/dom/Element;

    if-nez v10, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v8

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v4, v0

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    const-string v10, "CityMeteor"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "CityName"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    invoke-direct {p0, v10, p2}, Lcom/htc/sync/provider/weather/ChinaWeatherData;->_parseItemCityMeteor(Lorg/w3c/dom/NodeList;Lcom/htc/util/weather/WSPPData;)V
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v10, Lcom/htc/sync/provider/weather/ChinaWeatherData;->LOG_FLAG:Z

    if-eqz v10, :cond_2

    const-string v10, "ChinaWeatherParser"

    const-string v11, "[xml] Parsing China Weather Xml Error!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {p2, v10, v11}, Lcom/htc/util/weather/WSPData;->setLastUpdate(J)V
    :try_end_1
    .catch Lorg/w3c/dom/DOMException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
