.class public interface abstract Lcom/sec/android/app/launcher/activities/popup/MenuPresenter;
.super Ljava/lang/Object;
.source "MenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/popup/MenuPresenter$Callback;
    }
.end annotation


# virtual methods
.method public abstract collapseItemActionView(Lcom/sec/android/app/launcher/activities/popup/MenuBuilder;Lcom/sec/android/app/launcher/activities/popup/MenuItemImpl;)Z
.end method

.method public abstract expandItemActionView(Lcom/sec/android/app/launcher/activities/popup/MenuBuilder;Lcom/sec/android/app/launcher/activities/popup/MenuItemImpl;)Z
.end method

.method public abstract flagActionItems()Z
.end method

.method public abstract getId()I
.end method

.method public abstract getMenuView(Landroid/view/ViewGroup;)Lcom/sec/android/app/launcher/activities/popup/MenuView;
.end method

.method public abstract initForMenu(Landroid/content/Context;Lcom/sec/android/app/launcher/activities/popup/MenuBuilder;)V
.end method

.method public abstract onCloseMenu(Lcom/sec/android/app/launcher/activities/popup/MenuBuilder;Z)V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Parcelable;)V
.end method

.method public abstract onSaveInstanceState()Landroid/os/Parcelable;
.end method

.method public abstract onSubMenuSelected(Lcom/sec/android/app/launcher/activities/popup/SubMenuBuilder;)Z
.end method

.method public abstract setCallback(Lcom/sec/android/app/launcher/activities/popup/MenuPresenter$Callback;)V
.end method

.method public abstract updateMenuView(Z)V
.end method
