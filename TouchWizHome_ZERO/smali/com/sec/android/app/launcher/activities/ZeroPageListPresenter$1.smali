.class Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$1;
.super Ljava/lang/Object;
.source "ZeroPageListPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->access$200(Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getZeroPageListFragment()Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->onBackPressed()Z

    return-void
.end method
