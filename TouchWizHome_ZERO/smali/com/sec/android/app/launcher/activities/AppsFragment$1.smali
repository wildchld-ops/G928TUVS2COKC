.class Lcom/sec/android/app/launcher/activities/AppsFragment$1;
.super Ljava/lang/Object;
.source "AppsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsFragment;->onNativeInit(Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsFragment;

.field final synthetic val$listener:Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsFragment;Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsFragment$1;->this$0:Lcom/sec/android/app/launcher/activities/AppsFragment;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/AppsFragment$1;->val$listener:Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment$1;->this$0:Lcom/sec/android/app/launcher/activities/AppsFragment;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment$1;->this$0:Lcom/sec/android/app/launcher/activities/AppsFragment;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onNativeInit()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment$1;->val$listener:Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment$1;->val$listener:Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;

    invoke-interface {v0}, Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;->onInitialized()V

    :cond_1
    return-void
.end method
