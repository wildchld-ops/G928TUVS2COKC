.class Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerStatusWatcher;
.super Ljava/lang/Object;
.source "PersonalizerSettingsFragmentTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonalizerStatusWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;


# direct methods
.method private constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerStatusWatcher;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerStatusWatcher;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerStatusWatcher;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerServiceConnection;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->access$700(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerServiceConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerStatusWatcher;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->setPreferenceState()V

    :cond_0
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerStatusWatcher;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mWatcherHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->access$900(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerStatusWatcher;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mTimedTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->access$800(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
