.class public final Lcom/alipay/mobile/quinox/framemonitor/tool/a;
.super Ljava/lang/Object;
.source "HandlerThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/framemonitor/tool/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/quinox/framemonitor/tool/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/alipay/mobile/quinox/framemonitor/tool/a$a;

    const-string v1, "quinox-jerk-loop"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/framemonitor/tool/a$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/quinox/framemonitor/tool/a;->a:Lcom/alipay/mobile/quinox/framemonitor/tool/a$a;

    return-void
.end method

.method public static a()Landroid/os/Handler;
    .locals 1

    .line 18
    sget-object v0, Lcom/alipay/mobile/quinox/framemonitor/tool/a;->a:Lcom/alipay/mobile/quinox/framemonitor/tool/a$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/framemonitor/tool/a$a;->a()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
