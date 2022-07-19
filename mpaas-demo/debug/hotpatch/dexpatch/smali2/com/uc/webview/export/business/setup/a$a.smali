.class final Lcom/uc/webview/export/business/setup/a$a;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/business/setup/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/uc/webview/export/cyclone/UCElapseTime;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field final synthetic h:Lcom/uc/webview/export/business/setup/a;


# direct methods
.method private constructor <init>(Lcom/uc/webview/export/business/setup/a;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/uc/webview/export/business/setup/a$a;->h:Lcom/uc/webview/export/business/setup/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    new-instance p1, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {p1}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    iput-object p1, p0, Lcom/uc/webview/export/business/setup/a$a;->a:Lcom/uc/webview/export/cyclone/UCElapseTime;

    return-void
.end method

.method synthetic constructor <init>(Lcom/uc/webview/export/business/setup/a;B)V
    .locals 0

    .line 787
    invoke-direct {p0, p1}, Lcom/uc/webview/export/business/setup/a$a;-><init>(Lcom/uc/webview/export/business/setup/a;)V

    return-void
.end method
