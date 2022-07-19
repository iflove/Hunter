.class public final Lcom/alipay/mobile/common/utils/MobileNumberUtil;
.super Ljava/lang/Object;
.source "MobileNumberUtil.java"


# static fields
.field public static final CHINA_MAINLAND_MOBILE_REGEX:Ljava/lang/String; = "^((\\+86)|(86))?(1)\\d{10}$"

.field public static final HONGKONG_MOBILE_REGEX:Ljava/lang/String; = "^((\\+852)|(852))?[5,6,9]\\d{7}$"

.field public static final TAIWAN_MOBILE_REGEX:Ljava/lang/String; = "^((\\+886)|(886))?0?9\\d{8}$"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatChinaMainlandMobile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mobileNo"    # Ljava/lang/String;

    .line 92
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "result":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 98
    .local v1, "length":I
    add-int/lit8 v2, v1, -0x4

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    add-int/lit8 v2, v1, -0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 93
    .end local v0    # "result":Ljava/lang/StringBuffer;
    .end local v1    # "length":I
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static final isChinaMainlandMobile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mobileNo"    # Ljava/lang/String;

    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    return v0

    .line 58
    :cond_0
    const-string v0, "^((\\+86)|(86))?(1)\\d{10}$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isCnHkTwMobile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mobileNo"    # Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 42
    return v0

    .line 44
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/utils/MobileNumberUtil;->isChinaMainlandMobile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/alipay/mobile/common/utils/MobileNumberUtil;->isHongKongMobile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 45
    invoke-static {p0}, Lcom/alipay/mobile/common/utils/MobileNumberUtil;->isTaiwanMobile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    return v0

    .line 45
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static final isHongKongMobile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mobileNo"    # Ljava/lang/String;

    .line 121
    if-nez p0, :cond_0

    .line 122
    const/4 v0, 0x0

    return v0

    .line 124
    :cond_0
    const-string v0, "^((\\+852)|(852))?[5,6,9]\\d{7}$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isTaiwanMobile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mobileNo"    # Ljava/lang/String;

    .line 134
    if-nez p0, :cond_0

    .line 135
    const/4 v0, 0x0

    return v0

    .line 137
    :cond_0
    const-string v0, "^((\\+886)|(886))?0?9\\d{8}$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static obfuscateChinaMainlandMobile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mobileNo"    # Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "beforeString":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "hehindString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "****"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static trimChinaMainlandMobile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mobileNo"    # Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 68
    return-object v0

    .line 71
    :cond_0
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    const-string v3, "-"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 74
    const-string v1, "^((\\+86)|(86))?(1)\\d{10}$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 75
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    move-object v3, v0

    .line 76
    .local v3, "mobileMatcher":Ljava/util/regex/Matcher;
    move-object v3, v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v1, "^(\\+{0,1}86)"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    return-object v0

    .line 81
    :cond_1
    return-object v0
.end method
