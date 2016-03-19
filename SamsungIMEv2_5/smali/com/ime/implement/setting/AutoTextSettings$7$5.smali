.class Lcom/ime/implement/setting/AutoTextSettings$7$5;
.super Ljava/lang/Object;
.source "AutoTextSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/AutoTextSettings$7;->onResortingComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ime/implement/setting/AutoTextSettings$7;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoTextSettings$7;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettings$7$5;->this$1:Lcom/ime/implement/setting/AutoTextSettings$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings$7$5;->this$1:Lcom/ime/implement/setting/AutoTextSettings$7;

    iget-object v0, v0, Lcom/ime/implement/setting/AutoTextSettings$7;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v0}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
