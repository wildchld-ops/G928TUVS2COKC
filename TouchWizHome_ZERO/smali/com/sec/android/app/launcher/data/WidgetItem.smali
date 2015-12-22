.class public abstract Lcom/sec/android/app/launcher/data/WidgetItem;
.super Lcom/sec/android/app/launcher/data/LauncherItem;
.source "WidgetItem.java"


# instance fields
.field protected final mBinder:Lcom/sec/android/app/launcher/widget/framework/WidgetBinder;

.field private mWidgetId:I


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/launcher/widget/framework/WidgetBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/LauncherItem;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/launcher/data/WidgetItem;->mWidgetId:I

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/WidgetItem;->mBinder:Lcom/sec/android/app/launcher/widget/framework/WidgetBinder;

    return-void
.end method


# virtual methods
.method public getWidgetId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/WidgetItem;->mWidgetId:I

    return v0
.end method

.method public setWidgetId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/WidgetItem;->mWidgetId:I

    return-void
.end method
