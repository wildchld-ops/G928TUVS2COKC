.class Lcom/sec/android/app/launcher/activities/AppsPresenter$8;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPulseInnerColor:I
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1200(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPulseOuterColor:I
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1300(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I

    move-result v2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPulseFadeInDuration:F
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1400(Lcom/sec/android/app/launcher/activities/AppsPresenter;)F

    move-result v3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPulseFadeOutDuration:F
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1500(Lcom/sec/android/app/launcher/activities/AppsPresenter;)F

    move-result v4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPulseDuration:F
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1600(Lcom/sec/android/app/launcher/activities/AppsPresenter;)F

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/daliviews/views/NativeViewBase;->pulse(IIFFF)V

    const/4 v0, 0x1

    return v0
.end method
