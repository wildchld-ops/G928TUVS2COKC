.class Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;
.super Ljava/lang/Object;
.source "OptionTrayPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "setOptionTouchListener"
.end annotation


# instance fields
.field optionView:Lcom/sec/daliviews/views/ContainerView;

.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;Lcom/sec/daliviews/views/ContainerView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;->optionView:Lcom/sec/daliviews/views/ContainerView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;->optionView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;->optionView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/views/ContainerView;->setOnTouchListener(Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;->optionView:Lcom/sec/daliviews/views/ContainerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->setOpacity(Lcom/sec/daliviews/views/ContainerView;Z)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;->optionView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->setOpacity(Lcom/sec/daliviews/views/ContainerView;Z)V

    goto :goto_0
.end method
