.class public interface abstract Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;
.super Ljava/lang/Object;
.source "ConferenceManagerPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ConferenceManagerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConferenceManagerUi"
.end annotation


# virtual methods
.method public abstract isFragmentVisible()Z
.end method

.method public abstract refreshCall(Lcom/android/incallui/Call;)V
.end method

.method public abstract setPrimaryCallElapsedTime(ILjava/lang/String;)V
.end method

.method public abstract update(Landroid/content/Context;Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/Call;",
            ">;Z)V"
        }
    .end annotation
.end method
