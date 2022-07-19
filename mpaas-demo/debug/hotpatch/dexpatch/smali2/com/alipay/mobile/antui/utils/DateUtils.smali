.class public Lcom/alipay/mobile/antui/utils/DateUtils;
.super Landroid/text/format/DateUtils;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/text/format/DateUtils;-><init>()V

    return-void
.end method

.method public static caculateMonths(IILjava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 243
    :try_start_0
    invoke-interface {p2, v2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 251
    :catch_0
    move-exception p0

    goto :goto_2

    .line 244
    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 245
    const/16 p1, 0xc

    invoke-interface {p2, p0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 248
    :cond_1
    :goto_0
    nop

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_2

    .line 249
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 253
    :cond_2
    goto :goto_3

    .line 252
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/antui/utils/DateUtils;->getMonths()Ljava/util/ArrayList;

    move-result-object v0

    .line 255
    :goto_3
    return-object v0
.end method

.method public static calculateDaysInMonth(I)I
    .locals 1
    .param p0, "month"    # I

    .line 198
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/alipay/mobile/antui/utils/DateUtils;->calculateDaysInMonth(II)I

    move-result v0

    return v0
.end method

.method public static calculateDaysInMonth(II)I
    .locals 7
    .param p0, "year"    # I
    .param p1, "month"    # I

    .line 210
    const-string v0, "1"

    const-string v1, "3"

    const-string v2, "5"

    const-string v3, "7"

    const-string v4, "8"

    const-string v5, "10"

    const-string v6, "12"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "bigMonths":[Ljava/lang/String;
    const-string v1, "4"

    const-string v2, "6"

    const-string v3, "9"

    const-string v4, "11"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "littleMonths":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 213
    .local v2, "bigList":Ljava/util/List;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 215
    .local v3, "littleList":Ljava/util/List;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 216
    const/16 v4, 0x1f

    return v4

    .line 217
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    const/16 v4, 0x1e

    return v4

    .line 220
    :cond_1
    const/16 v4, 0x1d

    if-gtz p0, :cond_2

    .line 221
    return v4

    .line 224
    :cond_2
    rem-int/lit8 v5, p0, 0x4

    if-nez v5, :cond_3

    rem-int/lit8 v5, p0, 0x64

    if-nez v5, :cond_4

    :cond_3
    rem-int/lit16 v5, p0, 0x190

    if-nez v5, :cond_5

    .line 225
    :cond_4
    return v4

    .line 227
    :cond_5
    const/16 v4, 0x1c

    return v4
.end method

.method public static calculateDifference(JJLcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;)J
    .locals 2
    .param p0, "startTimeMillis"    # J
    .param p2, "endTimeMillis"    # J
    .param p4, "mode"    # Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    .line 135
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v1, p4}, Lcom/alipay/mobile/antui/utils/DateUtils;->calculateDifference(Ljava/util/Date;Ljava/util/Date;Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateDifference(Ljava/util/Date;Ljava/util/Date;Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;)J
    .locals 3
    .param p0, "startDate"    # Ljava/util/Date;
    .param p1, "endDate"    # Ljava/util/Date;
    .param p2, "mode"    # Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    .line 147
    invoke-static {p0, p1}, Lcom/alipay/mobile/antui/utils/DateUtils;->calculateDifference(Ljava/util/Date;Ljava/util/Date;)[J

    move-result-object v0

    .line 148
    .local v0, "different":[J
    sget-object v1, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->Minute:Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    invoke-virtual {p2, v1}, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const/4 v1, 0x2

    aget-wide v1, v0, v1

    return-wide v1

    .line 150
    :cond_0
    sget-object v1, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->Hour:Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    invoke-virtual {p2, v1}, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    return-wide v1

    .line 152
    :cond_1
    sget-object v1, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->Day:Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    invoke-virtual {p2, v1}, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1

    .line 155
    :cond_2
    const/4 v1, 0x3

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public static calculateDifference(J)[J
    .locals 10
    .param p0, "differentMilliSeconds"    # J

    .line 181
    const-wide/32 v0, 0x5265c00

    div-long v2, p0, v0

    .line 182
    .local v2, "elapsedDays":J
    rem-long v0, p0, v0

    .line 183
    move-wide p0, v0

    const-wide/32 v4, 0x36ee80

    div-long/2addr v0, v4

    .line 184
    .local v0, "elapsedHours":J
    rem-long v4, p0, v4

    .line 185
    move-wide p0, v4

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    .line 186
    .local v4, "elapsedMinutes":J
    rem-long v6, p0, v6

    .line 187
    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 188
    .local v6, "elapsedSeconds":J
    const/4 v8, 0x4

    new-array v8, v8, [J

    const/4 v9, 0x0

    aput-wide v2, v8, v9

    const/4 v9, 0x1

    aput-wide v0, v8, v9

    const/4 v9, 0x2

    aput-wide v4, v8, v9

    const/4 v9, 0x3

    aput-wide v6, v8, v9

    return-object v8
.end method

.method public static calculateDifference(Ljava/util/Date;Ljava/util/Date;)[J
    .locals 4
    .param p0, "startDate"    # Ljava/util/Date;
    .param p1, "endDate"    # Ljava/util/Date;

    .line 167
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/DateUtils;->calculateDifference(J)[J

    move-result-object v0

    return-object v0
.end method

.method public static calculateDifferentDay(JJ)J
    .locals 2
    .param p0, "startTimeMillis"    # J
    .param p2, "endTimeMillis"    # J

    .line 123
    sget-object v0, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->Day:Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/antui/utils/DateUtils;->calculateDifference(JJLcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateDifferentDay(Ljava/util/Date;Ljava/util/Date;)J
    .locals 2
    .param p0, "startDate"    # Ljava/util/Date;
    .param p1, "endDate"    # Ljava/util/Date;

    .line 79
    sget-object v0, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->Day:Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/antui/utils/DateUtils;->calculateDifference(Ljava/util/Date;Ljava/util/Date;Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateDifferentHour(JJ)J
    .locals 2
    .param p0, "startTimeMillis"    # J
    .param p2, "endTimeMillis"    # J

    .line 112
    sget-object v0, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->Hour:Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/antui/utils/DateUtils;->calculateDifference(JJLcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateDifferentHour(Ljava/util/Date;Ljava/util/Date;)J
    .locals 2
    .param p0, "startDate"    # Ljava/util/Date;
    .param p1, "endDate"    # Ljava/util/Date;

    .line 68
    sget-object v0, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->Hour:Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/antui/utils/DateUtils;->calculateDifference(Ljava/util/Date;Ljava/util/Date;Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateDifferentMinute(JJ)J
    .locals 2
    .param p0, "startTimeMillis"    # J
    .param p2, "endTimeMillis"    # J

    .line 101
    sget-object v0, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->Minute:Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/antui/utils/DateUtils;->calculateDifference(JJLcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateDifferentMinute(Ljava/util/Date;Ljava/util/Date;)J
    .locals 2
    .param p0, "startDate"    # Ljava/util/Date;
    .param p1, "endDate"    # Ljava/util/Date;

    .line 57
    sget-object v0, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->Minute:Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/antui/utils/DateUtils;->calculateDifference(Ljava/util/Date;Ljava/util/Date;Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateDifferentSecond(JJ)J
    .locals 2
    .param p0, "startTimeMillis"    # J
    .param p2, "endTimeMillis"    # J

    .line 90
    sget-object v0, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->Second:Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/antui/utils/DateUtils;->calculateDifference(JJLcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateDifferentSecond(Ljava/util/Date;Ljava/util/Date;)J
    .locals 2
    .param p0, "startDate"    # Ljava/util/Date;
    .param p1, "endDate"    # Ljava/util/Date;

    .line 46
    sget-object v0, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->Second:Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/antui/utils/DateUtils;->calculateDifference(Ljava/util/Date;Ljava/util/Date;Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static fillZero(I)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # I

    .line 276
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMonths()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v0, "months":Ljava/util/ArrayList;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xc

    if-gt v1, v2, :cond_0

    .line 262
    invoke-static {v1}, Lcom/alipay/mobile/antui/utils/DateUtils;->fillZero(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static isSameDay(Ljava/util/Date;)Z
    .locals 6
    .param p0, "date"    # Ljava/util/Date;

    .line 288
    if-eqz p0, :cond_1

    .line 291
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 292
    .local v0, "nowCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x0

    .line 293
    .local v2, "newCalendar":Ljava/util/Calendar;
    move-object v2, v1

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 294
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 295
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 296
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v5, v4, :cond_0

    return v3

    :cond_0
    nop

    .line 294
    return v1

    .line 289
    .end local v0    # "nowCalendar":Ljava/util/Calendar;
    .end local v2    # "newCalendar":Ljava/util/Calendar;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "date is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "dateStr"    # Ljava/lang/String;

    .line 325
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p0, v0}, Lcom/alipay/mobile/antui/utils/DateUtils;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p0, "dateStr"    # Ljava/lang/String;
    .param p1, "dataFormat"    # Ljava/lang/String;

    .line 309
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 310
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 311
    .local v1, "date":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 312
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "compositeui"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    return-object v0
.end method
