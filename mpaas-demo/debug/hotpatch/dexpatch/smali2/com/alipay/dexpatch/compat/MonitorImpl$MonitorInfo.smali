.class Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;
.super Ljava/lang/Object;
.source "MonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/dexpatch/compat/MonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitorInfo"
.end annotation


# instance fields
.field m1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field p0:Ljava/lang/String;

.field p1:Ljava/lang/String;

.field p2:Ljava/lang/String;

.field p3:Ljava/lang/String;

.field p4:Ljava/lang/String;

.field type:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/dexpatch/compat/MonitorImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/dexpatch/compat/MonitorImpl$1;

    .line 33
    invoke-direct {p0}, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;-><init>()V

    return-void
.end method
