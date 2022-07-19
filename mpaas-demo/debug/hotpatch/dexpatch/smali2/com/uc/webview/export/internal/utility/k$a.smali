.class final enum Lcom/uc/webview/export/internal/utility/k$a;
.super Ljava/lang/Enum;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/utility/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uc/webview/export/internal/utility/k$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/uc/webview/export/internal/utility/k$a;

.field public static final enum b:Lcom/uc/webview/export/internal/utility/k$a;

.field public static final enum c:Lcom/uc/webview/export/internal/utility/k$a;

.field private static final synthetic d:[Lcom/uc/webview/export/internal/utility/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 193
    new-instance v0, Lcom/uc/webview/export/internal/utility/k$a;

    const-string v1, "NOT_INITED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/utility/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/internal/utility/k$a;->a:Lcom/uc/webview/export/internal/utility/k$a;

    new-instance v1, Lcom/uc/webview/export/internal/utility/k$a;

    const-string v3, "ENABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/uc/webview/export/internal/utility/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/uc/webview/export/internal/utility/k$a;->b:Lcom/uc/webview/export/internal/utility/k$a;

    new-instance v3, Lcom/uc/webview/export/internal/utility/k$a;

    const-string v5, "DISABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/uc/webview/export/internal/utility/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/uc/webview/export/internal/utility/k$a;->c:Lcom/uc/webview/export/internal/utility/k$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/uc/webview/export/internal/utility/k$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/uc/webview/export/internal/utility/k$a;->d:[Lcom/uc/webview/export/internal/utility/k$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/uc/webview/export/internal/utility/k$a;
    .locals 1

    .line 193
    sget-object v0, Lcom/uc/webview/export/internal/utility/k$a;->d:[Lcom/uc/webview/export/internal/utility/k$a;

    invoke-virtual {v0}, [Lcom/uc/webview/export/internal/utility/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uc/webview/export/internal/utility/k$a;

    return-object v0
.end method
