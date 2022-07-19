.class public final Lcom/alipay/mypass/biz/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mypass/biz/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static final auth_loading:I

.field public static final cancel:I

.field public static final stay_here:I

.field public static final timeout:I

.field public static final trade_download:I

.field public static final trade_forbid_content:I

.field public static final trade_forbid_title:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-string v0, "string"

    const-string v1, "auth_loading"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mypass/biz/R$string;->auth_loading:I

    .line 24
    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mypass/biz/R$string;->cancel:I

    .line 25
    const-string v1, "stay_here"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mypass/biz/R$string;->stay_here:I

    .line 26
    const-string v1, "timeout"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mypass/biz/R$string;->timeout:I

    .line 27
    const-string v1, "trade_download"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mypass/biz/R$string;->trade_download:I

    .line 28
    const-string v1, "trade_forbid_content"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mypass/biz/R$string;->trade_forbid_content:I

    .line 29
    const-string v1, "trade_forbid_title"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mypass/biz/R$string;->trade_forbid_title:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
