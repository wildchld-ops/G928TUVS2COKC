.class Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$1;
.super Ljava/lang/Object;
.source "HomeZeroPagePresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/CheckBox$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setupHomeZeroPageCheckBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v0

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->saveHomeZeroPageEnableState(Z)V

    invoke-static {}, Lcom/sec/daliviews/views/NativeViewBase;->getTouchFeedback()Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/daliviews/views/NativeViewBase;->getTouchFeedback()Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;->playSoundEffect(I)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setHomeZeroPageOn()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->access$000(Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setHomeZeroPageOff()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->access$100(Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;)V

    goto :goto_0
.end method
