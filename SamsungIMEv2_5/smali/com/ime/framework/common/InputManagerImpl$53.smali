.class Lcom/ime/framework/common/InputManagerImpl$53;
.super Ljava/lang/Object;
.source "InputManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/common/InputManagerImpl;->sendBroadcaseRemoveTermByThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/ime/framework/common/InputManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$53;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$1600()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.inputmethod.removeTerm"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
