.class public final Lcom/alipay/mobile/common/transport/http/HttpDateTime;
.super Ljava/lang/Object;
.source "HttpDateTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    nop

    .line 69
    const-string v0, "([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->a:Ljava/util/regex/Pattern;

    .line 70
    nop

    .line 71
    const-string v0, "[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->b:Ljava/util/regex/Pattern;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 3
    .param p0, "dateString"    # Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 126
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    const/4 v1, 0x1

    .line 127
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 126
    return v0

    .line 129
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    return v0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 6
    .param p0, "monthString"    # Ljava/lang/String;

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 149
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    add-int/2addr v1, v3

    .line 150
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    add-int/2addr v1, v4

    add-int/lit16 v1, v1, -0x123

    .line 151
    const/16 v4, 0x9

    if-eq v1, v4, :cond_8

    const/16 v5, 0xa

    if-eq v1, v5, :cond_7

    const/16 v2, 0x16

    if-eq v1, v2, :cond_6

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_5

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_4

    const/16 v0, 0x20

    if-eq v1, v0, :cond_3

    const/16 v0, 0x28

    if-eq v1, v0, :cond_2

    const/16 v0, 0x2a

    if-eq v1, v0, :cond_1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 169
    :pswitch_0
    const/16 v0, 0x8

    return v0

    .line 161
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 171
    :pswitch_2
    return v4

    .line 173
    :cond_0
    return v5

    .line 163
    :cond_1
    const/4 v0, 0x5

    return v0

    .line 165
    :cond_2
    const/4 v0, 0x6

    return v0

    .line 159
    :cond_3
    const/4 v0, 0x3

    return v0

    .line 157
    :cond_4
    return v3

    .line 167
    :cond_5
    const/4 v0, 0x7

    return v0

    .line 153
    :cond_6
    return v0

    .line 155
    :cond_7
    return v2

    .line 175
    :cond_8
    const/16 v0, 0xb

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static c(Ljava/lang/String;)I
    .locals 6
    .param p0, "yearString"    # Ljava/lang/String;

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 183
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    .line 184
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    move v1, v3

    .line 185
    .local v1, "year":I
    move v1, v0

    const/16 v2, 0x46

    if-lt v0, v2, :cond_0

    .line 186
    add-int/lit16 v0, v1, 0x76c

    return v0

    .line 188
    :cond_0
    add-int/lit16 v0, v1, 0x7d0

    return v0

    .line 190
    .end local v1    # "year":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 192
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    .line 193
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 194
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    move v1, v3

    .line 195
    .restart local v1    # "year":I
    add-int/lit16 v0, v0, 0x76c

    return v0

    .line 196
    .end local v1    # "year":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    .line 197
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    .line 198
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    .line 199
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 200
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 197
    return v0

    .line 202
    :cond_3
    const/16 v0, 0x7b2

    return v0
.end method

.method private static d(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;
    .locals 5
    .param p0, "timeString"    # Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "i":I
    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 210
    .local v2, "hour":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    .line 211
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int v2, v3, v4

    .line 213
    :cond_0
    add-int/2addr v0, v1

    .line 215
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v4, v3, 0x1

    .line 216
    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    .line 218
    .local v0, "minute":I
    add-int/2addr v4, v1

    .line 220
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "i":I
    .local v1, "i":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0xa

    .line 221
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v3, v4

    .line 223
    .local v3, "second":I
    new-instance v4, Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;

    invoke-direct {v4, v2, v0, v3}, Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;-><init>(III)V

    return-object v4
.end method

.method public static parse(Ljava/lang/String;)J
    .locals 13
    .param p0, "timeString"    # Ljava/lang/String;

    const/4 v0, 0x0

    .local v0, "month":I
    const/4 v1, 0x0

    .local v1, "date":I
    const/4 v2, 0x0

    .line 93
    .local v2, "year":I
    sget-object v3, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 94
    .local v5, "rfcMatcher":Ljava/util/regex/Matcher;
    move-object v5, v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v3, :cond_0

    .line 95
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->a(Ljava/lang/String;)I

    move-result v1

    .line 96
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->b(Ljava/lang/String;)I

    move-result v0

    .line 97
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->c(Ljava/lang/String;)I

    move-result v2

    .line 98
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->d(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;

    move-result-object v3

    .local v3, "timeOfDay":Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;
    goto :goto_0

    .line 100
    .end local v3    # "timeOfDay":Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;
    :cond_0
    sget-object v3, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 101
    .local v4, "ansicMatcher":Ljava/util/regex/Matcher;
    move-object v4, v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->b(Ljava/lang/String;)I

    move-result v0

    .line 103
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->a(Ljava/lang/String;)I

    move-result v1

    .line 104
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->d(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;

    move-result-object v3

    .line 105
    .restart local v3    # "timeOfDay":Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->c(Ljava/lang/String;)I

    move-result v2

    .line 112
    .end local v4    # "ansicMatcher":Ljava/util/regex/Matcher;
    :goto_0
    const/16 v6, 0x7f6

    if-lt v2, v6, :cond_1

    .line 113
    const/16 v2, 0x7f6

    .line 114
    const/4 v0, 0x0

    .line 115
    const/4 v1, 0x1

    .line 118
    :cond_1
    new-instance v6, Landroid/text/format/Time;

    const-string v7, "UTC"

    invoke-direct {v6, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 119
    .local v4, "time":Landroid/text/format/Time;
    move-object v4, v6

    iget v7, v3, Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;->second:I

    iget v8, v3, Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;->minute:I

    iget v9, v3, Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;->hour:I

    move v10, v1

    move v11, v0

    move v12, v2

    invoke-virtual/range {v6 .. v12}, Landroid/text/format/Time;->set(IIIIII)V

    .line 121
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    return-wide v6

    .line 107
    .end local v3    # "timeOfDay":Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;
    .local v4, "ansicMatcher":Ljava/util/regex/Matcher;
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method
