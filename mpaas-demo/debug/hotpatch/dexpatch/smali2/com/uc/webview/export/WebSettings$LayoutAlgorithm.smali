.class public final enum Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;
.super Ljava/lang/Enum;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NARROW_COLUMNS:Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

.field public static final enum NORMAL:Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

.field public static final enum SINGLE_COLUMN:Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum TEXT_AUTOSIZING:Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

.field private static final synthetic a:[Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 59
    new-instance v0, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->NORMAL:Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    .line 63
    new-instance v1, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    const-string v3, "SINGLE_COLUMN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    .line 65
    new-instance v3, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    const-string v5, "NARROW_COLUMNS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    .line 69
    new-instance v5, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    const-string v7, "TEXT_AUTOSIZING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    .line 57
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->a:[Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;
    .locals 1

    .line 57
    const-class v0, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;
    .locals 1

    .line 57
    sget-object v0, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->a:[Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0}, [Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    return-object v0
.end method
