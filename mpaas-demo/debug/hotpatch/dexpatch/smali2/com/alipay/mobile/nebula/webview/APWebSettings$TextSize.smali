.class public final enum Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
.super Ljava/lang/Enum;
.source "APWebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/webview/APWebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

.field public static final enum LARGER:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

.field public static final enum LARGEST:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

.field public static final enum NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

.field public static final enum SMALLER:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

.field public static final enum SMALLEST:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 250
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    const-string v1, "SMALLEST"

    const/4 v2, 0x0

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->SMALLEST:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    .line 251
    new-instance v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    const-string v3, "SMALLER"

    const/4 v4, 0x1

    const/16 v5, 0x4b

    invoke-direct {v1, v3, v4, v5}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->SMALLER:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    .line 252
    new-instance v3, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    const-string v5, "NORMAL"

    const/4 v6, 0x2

    const/16 v7, 0x64

    invoke-direct {v3, v5, v6, v7}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    .line 253
    new-instance v5, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    const-string v7, "LARGER"

    const/4 v8, 0x3

    const/16 v9, 0x96

    invoke-direct {v5, v7, v8, v9}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->LARGER:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    .line 254
    new-instance v7, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    const-string v9, "LARGEST"

    const/4 v10, 0x4

    const/16 v11, 0xc8

    invoke-direct {v7, v9, v10, v11}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->LARGEST:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    .line 249
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->$VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

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

    .line 258
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 259
    iput p3, p0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->value:I

    .line 260
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 249
    const-class v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
    .locals 1

    .line 249
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->$VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    return-object v0
.end method
