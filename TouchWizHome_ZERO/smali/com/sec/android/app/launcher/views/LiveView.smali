.class public abstract Lcom/sec/android/app/launcher/views/LiveView;
.super Lcom/sec/daliviews/views/ContainerView;
.source "LiveView.java"

# interfaces
.implements Lcom/sec/daliviews/views/IModedView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/views/ContainerView;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public abstract setIconView(Lcom/sec/android/app/launcher/views/HomeItemView;)V
.end method

.method public abstract startAnim()V
.end method

.method public abstract stopAnim()V
.end method
