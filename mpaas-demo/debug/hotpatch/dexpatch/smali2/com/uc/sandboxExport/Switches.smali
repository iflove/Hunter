.class public final Lcom/uc/sandboxExport/Switches;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    nop

    .line 10
    const-string v0, "debug.uc.renderer_debug_log"

    invoke-static {v0}, Lcom/uc/sandboxExport/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/uc/sandboxExport/Switches;->a:Z

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
