.class public Lcom/uc/webview/export/business/a;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/business/a$c;,
        Lcom/uc/webview/export/business/a$a;,
        Lcom/uc/webview/export/business/a$b;,
        Lcom/uc/webview/export/business/a$d;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-class v0, Lcom/uc/webview/export/business/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/business/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uc/webview/export/business/a;->a:J

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 5

    .line 15
    iget-wide v0, p0, Lcom/uc/webview/export/business/a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 16
    iput-wide p1, p0, Lcom/uc/webview/export/business/a;->a:J

    return-void

    .line 18
    :cond_0
    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/uc/webview/export/business/a;->a:J

    .line 20
    return-void
.end method
