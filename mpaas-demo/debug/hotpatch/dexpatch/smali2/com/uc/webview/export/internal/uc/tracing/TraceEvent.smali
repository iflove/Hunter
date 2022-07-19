.class public Lcom/uc/webview/export/internal/uc/tracing/TraceEvent;
.super Ljava/lang/Object;
.source "U4Source"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/internal/uc/tracing/TraceEvent;->a:Ljava/lang/reflect/Method;

    .line 27
    sput-object v0, Lcom/uc/webview/export/internal/uc/tracing/TraceEvent;->b:Ljava/lang/reflect/Method;

    .line 28
    sput-object v0, Lcom/uc/webview/export/internal/uc/tracing/TraceEvent;->c:Ljava/lang/reflect/Method;

    .line 29
    sput-object v0, Lcom/uc/webview/export/internal/uc/tracing/TraceEvent;->d:Ljava/lang/reflect/Method;

    .line 30
    sput-object v0, Lcom/uc/webview/export/internal/uc/tracing/TraceEvent;->e:Ljava/lang/reflect/Method;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setEnabled(Z)V
    .locals 0

    .line 49
    return-void
.end method
