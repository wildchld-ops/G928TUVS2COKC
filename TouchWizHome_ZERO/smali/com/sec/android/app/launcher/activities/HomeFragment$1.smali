.class Lcom/sec/android/app/launcher/activities/HomeFragment$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeFragment;->onNativeInit(Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomeFragment;

.field final synthetic val$listener:Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomeFragment;Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeFragment$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeFragment;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/HomeFragment$1;->val$listener:Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeFragment;

    # getter for: Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->access$000(Lcom/sec/android/app/launcher/activities/HomeFragment;)Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onNativeInit()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment$1;->val$listener:Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment$1;->val$listener:Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;

    invoke-interface {v0}, Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;->onInitialized()V

    :cond_0
    return-void
.end method
