.class public Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;
.super Ljava/lang/Object;
.source "IconfontInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NO_SIZE:F = -1.0f

.field public static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x67475068684b39ceL


# instance fields
.field private iconfontColor:Ljava/lang/String;

.field private iconfontFonts:Lorg/json/JSONArray;

.field private iconfontId:Ljava/lang/String;

.field private iconfontSize:Ljava/lang/String;

.field private iconfontUnicode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;->iconfontId:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;->iconfontSize:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;->iconfontUnicode:Ljava/lang/String;

    .line 30
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;->iconfontFonts:Lorg/json/JSONArray;

    .line 31
    iput-object v0, p0, Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;->iconfontColor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIconfontColor()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;->iconfontColor:Ljava/lang/String;

    return-object v0
.end method

.method public getIconfontFonts()Lorg/json/JSONArray;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;->iconfontFonts:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getIconfontId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;->iconfontId:Ljava/lang/String;

    return-object v0
.end method

.method public getIconfontSize()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;->iconfontSize:Ljava/lang/String;

    return-object v0
.end method

.method public getIconfontUnicode()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;->iconfontUnicode:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;->iconfontId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 76
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;->iconfontUnicode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;->iconfontFonts:Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    .line 77
    return v0
.end method

.method public setIconfontColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconfontColor"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;->iconfontColor:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setIconfontFonts(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "iconfontFonts"    # Lorg/json/JSONArray;

    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;->iconfontFonts:Lorg/json/JSONArray;

    .line 63
    return-void
.end method

.method public setIconfontId(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconfontId"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;->iconfontId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setIconfontSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconfontSize"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;->iconfontSize:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setIconfontUnicode(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconfontUnicode"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/antui/iconfont/model/IconfontInfo;->iconfontUnicode:Ljava/lang/String;

    .line 55
    return-void
.end method
