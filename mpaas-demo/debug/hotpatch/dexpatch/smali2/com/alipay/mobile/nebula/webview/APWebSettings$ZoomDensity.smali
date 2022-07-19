.class public final enum Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;
.super Ljava/lang/Enum;
.source "APWebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/webview/APWebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZoomDensity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

.field public static final enum CLOSE:Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

.field public static final enum FAR:Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

.field public static final enum MEDIUM:Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 264
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    const-string v1, "FAR"

    const/4 v2, 0x0

    const/16 v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->FAR:Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    .line 265
    new-instance v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    const-string v3, "MEDIUM"

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-direct {v1, v3, v4, v5}, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->MEDIUM:Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    .line 266
    new-instance v3, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    const-string v5, "CLOSE"

    const/4 v6, 0x2

    const/16 v7, 0x4b

    invoke-direct {v3, v5, v6, v7}, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->CLOSE:Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    .line 263
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->$VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 270
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 271
    iput p3, p0, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->value:I

    .line 272
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 263
    const-class v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;
    .locals 1

    .line 263
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->$VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->value:I

    return v0
.end method
