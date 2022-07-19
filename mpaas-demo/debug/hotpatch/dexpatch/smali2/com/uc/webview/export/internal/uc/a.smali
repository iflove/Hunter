.class public final Lcom/uc/webview/export/internal/uc/a;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/InvokeObject;


# instance fields
.field a:Ljava/lang/Object;

.field b:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/uc/webview/export/internal/uc/a;->a:Ljava/lang/Object;

    .line 15
    iput p1, p0, Lcom/uc/webview/export/internal/uc/a;->b:I

    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    iget p1, p0, Lcom/uc/webview/export/internal/uc/a;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
