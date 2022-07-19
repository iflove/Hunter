.class public final Lcom/uc/webview/export/internal/utility/e$a;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/utility/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:J

.field public static b:J

.field public static c:J

.field public static d:J

.field public static e:J

.field public static f:J

.field public static g:J

.field public static h:J

.field public static i:J

.field public static j:J

.field public static k:J

.field public static l:J

.field public static m:J

.field public static n:J

.field public static o:J

.field public static p:J

.field public static q:J

.field public static r:J


# instance fields
.field public s:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    nop

    .line 28
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/uc/webview/export/internal/utility/e$a;->a:J

    .line 29
    const-wide/16 v0, 0x2

    sput-wide v0, Lcom/uc/webview/export/internal/utility/e$a;->b:J

    .line 30
    const-wide/16 v0, 0x4

    sput-wide v0, Lcom/uc/webview/export/internal/utility/e$a;->c:J

    .line 31
    const-wide/16 v0, 0x8

    sput-wide v0, Lcom/uc/webview/export/internal/utility/e$a;->d:J

    .line 32
    const-wide/16 v0, 0x10

    sput-wide v0, Lcom/uc/webview/export/internal/utility/e$a;->e:J

    .line 33
    const-wide/16 v0, 0x20

    sput-wide v0, Lcom/uc/webview/export/internal/utility/e$a;->f:J

    .line 34
    const-wide/16 v0, 0x40

    sput-wide v0, Lcom/uc/webview/export/internal/utility/e$a;->g:J

    .line 35
    const-wide/16 v0, 0x80

    sput-wide v0, Lcom/uc/webview/export/internal/utility/e$a;->h:J

    .line 36
    const-wide/16 v0, 0x100

    sput-wide v0, Lcom/uc/webview/export/internal/utility/e$a;->i:J

    .line 37
    const-wide/16 v0, 0x200

    sput-wide v0, Lcom/uc/webview/export/internal/utility/e$a;->j:J

    .line 38
    const-wide/16 v0, 0x400

    sput-wide v0, Lcom/uc/webview/export/internal/utility/e$a;->k:J

    .line 39
    const-wide/16 v0, 0x800

    sput-wide v0, Lcom/uc/webview/export/internal/utility/e$a;->l:J

    .line 40
    const-wide/16 v0, 0x1000

    sput-wide v0, Lcom/uc/webview/export/internal/utility/e$a;->m:J

    .line 41
    const-wide/16 v0, 0x2000

    sput-wide v0, Lcom/uc/webview/export/internal/utility/e$a;->n:J

    .line 42
    const-wide/16 v0, 0x4000

    sput-wide v0, Lcom/uc/webview/export/internal/utility/e$a;->o:J

    .line 43
    const-wide/32 v0, 0x8000

    sput-wide v0, Lcom/uc/webview/export/internal/utility/e$a;->p:J

    .line 44
    const-wide/32 v0, 0x10000

    sput-wide v0, Lcom/uc/webview/export/internal/utility/e$a;->q:J

    const-wide/32 v0, 0x20000

    sput-wide v0, Lcom/uc/webview/export/internal/utility/e$a;->r:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uc/webview/export/internal/utility/e$a;->s:J

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/uc/webview/export/internal/utility/e$a;->s:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/uc/webview/export/internal/utility/e$a;->s:J

    .line 58
    return-void
.end method
