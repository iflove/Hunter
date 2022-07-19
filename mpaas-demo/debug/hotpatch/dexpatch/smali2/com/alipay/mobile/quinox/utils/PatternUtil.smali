.class public Lcom/alipay/mobile/quinox/utils/PatternUtil;
.super Ljava/lang/Object;
.source "PatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;
    }
.end annotation


# static fields
.field public static sHostPattern:Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;

.field public static sPattern:Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pattern(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/alipay/mobile/quinox/utils/PatternUtil;->sPattern:Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    return v0

    .line 40
    :cond_0
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->pattern(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static patternHost(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/alipay/mobile/quinox/utils/PatternUtil;->sHostPattern:Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    return v0

    .line 26
    :cond_0
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->pattern(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
