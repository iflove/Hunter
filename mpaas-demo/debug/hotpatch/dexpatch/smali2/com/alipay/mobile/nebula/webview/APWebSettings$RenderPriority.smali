.class public final enum Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;
.super Ljava/lang/Enum;
.source "APWebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/webview/APWebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

.field public static final enum HIGH:Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

.field public static final enum LOW:Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

.field public static final enum NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 283
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;->NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    .line 284
    new-instance v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    const-string v3, "HIGH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;->HIGH:Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    .line 285
    new-instance v3, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    const-string v5, "LOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;->LOW:Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    .line 282
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;->$VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 282
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 282
    const-class v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;
    .locals 1

    .line 282
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;->$VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    return-object v0
.end method
