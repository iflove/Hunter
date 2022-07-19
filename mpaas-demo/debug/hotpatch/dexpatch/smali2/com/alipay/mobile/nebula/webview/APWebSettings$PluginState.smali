.class public final enum Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;
.super Ljava/lang/Enum;
.source "APWebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/webview/APWebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PluginState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

.field public static final enum OFF:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

.field public static final enum ON:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

.field public static final enum ON_DEMAND:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 298
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    const-string v1, "ON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->ON:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    .line 299
    new-instance v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    const-string v3, "ON_DEMAND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->ON_DEMAND:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    .line 300
    new-instance v3, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    const-string v5, "OFF"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->OFF:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    .line 297
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->$VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 297
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 297
    const-class v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;
    .locals 1

    .line 297
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->$VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    return-object v0
.end method
