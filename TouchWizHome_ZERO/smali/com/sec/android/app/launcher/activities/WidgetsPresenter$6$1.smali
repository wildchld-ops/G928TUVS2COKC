.class Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6$1;
.super Ljava/lang/Object;
.source "WidgetsPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6;->handleUIAnimEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6$1;->this$1:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6$1;->this$1:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6;

    iget v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6;->val$visible:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6$1;->this$1:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->detachRootViewIfNeeded()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1200(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V

    :cond_0
    return-void
.end method
