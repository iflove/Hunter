.class public final enum Lcom/uc/webview/export/WebSettings$TextSize;
.super Ljava/lang/Enum;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uc/webview/export/WebSettings$TextSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LARGER:Lcom/uc/webview/export/WebSettings$TextSize;

.field public static final enum LARGEST:Lcom/uc/webview/export/WebSettings$TextSize;

.field public static final enum NORMAL:Lcom/uc/webview/export/WebSettings$TextSize;

.field public static final enum SMALLER:Lcom/uc/webview/export/WebSettings$TextSize;

.field public static final enum SMALLEST:Lcom/uc/webview/export/WebSettings$TextSize;

.field private static final synthetic a:[Lcom/uc/webview/export/WebSettings$TextSize;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 87
    new-instance v0, Lcom/uc/webview/export/WebSettings$TextSize;

    const-string v1, "SMALLEST"

    const/4 v2, 0x0

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/uc/webview/export/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uc/webview/export/WebSettings$TextSize;->SMALLEST:Lcom/uc/webview/export/WebSettings$TextSize;

    .line 88
    new-instance v1, Lcom/uc/webview/export/WebSettings$TextSize;

    const-string v3, "SMALLER"

    const/4 v4, 0x1

    const/16 v5, 0x4b

    invoke-direct {v1, v3, v4, v5}, Lcom/uc/webview/export/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/uc/webview/export/WebSettings$TextSize;->SMALLER:Lcom/uc/webview/export/WebSettings$TextSize;

    .line 89
    new-instance v3, Lcom/uc/webview/export/WebSettings$TextSize;

    const-string v5, "NORMAL"

    const/4 v6, 0x2

    const/16 v7, 0x64

    invoke-direct {v3, v5, v6, v7}, Lcom/uc/webview/export/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/uc/webview/export/WebSettings$TextSize;->NORMAL:Lcom/uc/webview/export/WebSettings$TextSize;

    .line 90
    new-instance v5, Lcom/uc/webview/export/WebSettings$TextSize;

    const-string v7, "LARGER"

    const/4 v8, 0x3

    const/16 v9, 0x96

    invoke-direct {v5, v7, v8, v9}, Lcom/uc/webview/export/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/uc/webview/export/WebSettings$TextSize;->LARGER:Lcom/uc/webview/export/WebSettings$TextSize;

    .line 91
    new-instance v7, Lcom/uc/webview/export/WebSettings$TextSize;

    const-string v9, "LARGEST"

    const/4 v10, 0x4

    const/16 v11, 0xc8

    invoke-direct {v7, v9, v10, v11}, Lcom/uc/webview/export/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/uc/webview/export/WebSettings$TextSize;->LARGEST:Lcom/uc/webview/export/WebSettings$TextSize;

    .line 85
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/uc/webview/export/WebSettings$TextSize;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/uc/webview/export/WebSettings$TextSize;->a:[Lcom/uc/webview/export/WebSettings$TextSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput p3, p0, Lcom/uc/webview/export/WebSettings$TextSize;->value:I

    .line 94
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uc/webview/export/WebSettings$TextSize;
    .locals 1

    .line 85
    const-class v0, Lcom/uc/webview/export/WebSettings$TextSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/WebSettings$TextSize;

    return-object p0
.end method

.method public static values()[Lcom/uc/webview/export/WebSettings$TextSize;
    .locals 1

    .line 85
    sget-object v0, Lcom/uc/webview/export/WebSettings$TextSize;->a:[Lcom/uc/webview/export/WebSettings$TextSize;

    invoke-virtual {v0}, [Lcom/uc/webview/export/WebSettings$TextSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uc/webview/export/WebSettings$TextSize;

    return-object v0
.end method
