.class final Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecentHistoryListInfo"
.end annotation


# instance fields
.field deviceInfo:Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

.field displayLabel:Ljava/lang/CharSequence;

.field extraInfo:Ljava/lang/CharSequence;

.field iconType:I

.field photoIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->iconType:I

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->photoIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->deviceInfo:Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->iconType:I

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->photoIcon:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->deviceInfo:Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->iconType:I

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->photoIcon:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->deviceInfo:Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    return-void
.end method
