.class public final Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator$a;
.super Ljava/io/IOException;
.source "ProtobufBundleOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;
    .param p2, "msg"    # Ljava/lang/String;

    .line 187
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator$a;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;

    .line 188
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 189
    return-void
.end method
