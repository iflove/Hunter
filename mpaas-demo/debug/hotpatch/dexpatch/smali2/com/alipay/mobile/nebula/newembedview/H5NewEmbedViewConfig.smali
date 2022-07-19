.class public Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewConfig;
.super Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;
.source "H5NewEmbedViewConfig.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5NewEmbedViewConfig"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method
