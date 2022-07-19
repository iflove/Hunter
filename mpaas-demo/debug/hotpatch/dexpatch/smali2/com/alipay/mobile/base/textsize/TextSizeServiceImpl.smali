.class public Lcom/alipay/mobile/base/textsize/TextSizeServiceImpl;
.super Lcom/alipay/mobile/framework/service/textsize/TextSizeService;
.source "TextSizeServiceImpl.java"


# static fields
.field private static final SP_GEAR:Ljava/lang/String; = "gear"

.field private static final SP_NAME:Ljava/lang/String; = "TextSize"

.field private static final TAG:Ljava/lang/String; = "TextSizeServiceImpl"

.field private static mGear:I


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, -0x1

    sput v0, Lcom/alipay/mobile/base/textsize/TextSizeServiceImpl;->mGear:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/textsize/TextSizeService;-><init>()V

    return-void
.end method


# virtual methods
.method public getScaleByGear(I)F
    .locals 1
    .param p1, "gear"    # I

    .line 47
    invoke-static {p1}, Lcom/alipay/mobile/framework/service/textsize/SizeUtil;->getScale(I)F

    move-result v0

    return v0
.end method

.method public getSizeGear()I
    .locals 3

    .line 34
    sget v0, Lcom/alipay/mobile/base/textsize/TextSizeServiceImpl;->mGear:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/base/textsize/TextSizeServiceImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v2, "gear"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/alipay/mobile/base/textsize/TextSizeServiceImpl;->mGear:I

    .line 37
    :cond_0
    sget v0, Lcom/alipay/mobile/base/textsize/TextSizeServiceImpl;->mGear:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 52
    invoke-virtual {p0}, Lcom/alipay/mobile/base/textsize/TextSizeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "TextSize"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/textsize/TextSizeServiceImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/textsize/TextSizeServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/base/textsize/TextSizeServiceImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "gear"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/alipay/mobile/base/textsize/TextSizeServiceImpl;->mGear:I

    .line 57
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 62
    return-void
.end method

.method public setSizeGear(I)V
    .locals 3
    .param p1, "gear"    # I

    .line 22
    if-ltz p1, :cond_1

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    sput p1, Lcom/alipay/mobile/base/textsize/TextSizeServiceImpl;->mGear:I

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/base/textsize/TextSizeServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "gear"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/base/textsize/TextSizeServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    return-void

    .line 23
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gear is not correct = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextSizeServiceImpl"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public transformSize(F)F
    .locals 1
    .param p1, "size"    # F

    .line 42
    sget v0, Lcom/alipay/mobile/base/textsize/TextSizeServiceImpl;->mGear:I

    invoke-static {p1, v0}, Lcom/alipay/mobile/framework/service/textsize/SizeUtil;->getTextSize(FI)F

    move-result v0

    return v0
.end method
