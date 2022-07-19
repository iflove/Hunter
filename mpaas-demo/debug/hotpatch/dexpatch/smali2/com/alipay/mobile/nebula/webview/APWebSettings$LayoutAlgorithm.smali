.class public final enum Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;
.super Ljava/lang/Enum;
.source "APWebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/webview/APWebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

.field public static final enum NARROW_COLUMNS:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

.field public static final enum SINGLE_COLUMN:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum TEXT_AUTOSIZING:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 222
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    .line 226
    new-instance v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    const-string v3, "SINGLE_COLUMN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    .line 231
    new-instance v3, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    const-string v5, "NARROW_COLUMNS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    .line 233
    new-instance v5, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    const-string v7, "TEXT_AUTOSIZING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    .line 221
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->$VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 221
    const-class v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;
    .locals 1

    .line 221
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->$VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    return-object v0
.end method
