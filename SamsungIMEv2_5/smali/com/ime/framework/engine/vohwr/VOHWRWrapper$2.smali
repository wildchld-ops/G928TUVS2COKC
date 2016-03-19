.class Lcom/ime/framework/engine/vohwr/VOHWRWrapper$2;
.super Ljava/lang/Object;
.source "VOHWRWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/engine/vohwr/VOHWRWrapper;->loadVOLibrary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/engine/vohwr/VOHWRWrapper;


# direct methods
.method constructor <init>(Lcom/ime/framework/engine/vohwr/VOHWRWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/vohwr/VOHWRWrapper$2;->this$0:Lcom/ime/framework/engine/vohwr/VOHWRWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "StylusCore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
