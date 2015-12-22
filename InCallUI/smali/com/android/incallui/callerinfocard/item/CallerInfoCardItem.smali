.class public abstract Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
.super Ljava/lang/Object;
.source "CallerInfoCardItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected final ONE_DAY_MILLIS:J

.field protected mActionMemoThumbnail:Landroid/graphics/drawable/Drawable;

.field protected mAppType:I

.field protected mContent:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mCookieWrapper:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

.field protected mDate:Ljava/lang/String;

.field protected mDeleted:Z

.field protected mIconRes:I

.field protected mOptionalDate:Ljava/lang/String;

.field protected mUpdateTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->ONE_DAY_MILLIS:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->ONE_DAY_MILLIS:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->build(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method

.method private build(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    move-object v0, p4

    check-cast v0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mCookieWrapper:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mCookieWrapper:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    if-nez v0, :cond_0

    const-string v0, "mCookieWrapper is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mCookieWrapper:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget v0, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->appType:I

    iput v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mAppType:I

    if-nez p3, :cond_1

    const-string v0, "cursor is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->deleteItem()V

    goto :goto_1
.end method


# virtual methods
.method public compareTo(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)I
    .locals 4

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getUpdateTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {p0, p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->compareTo(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)I

    move-result v0

    return v0
.end method

.method protected final deleteItem()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mDeleted:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mAppType:I

    check-cast p1, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final getActionMemoThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mActionMemoThumbnail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getAppType()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mAppType:I

    return v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public final getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mDeleted:Z

    return v0
.end method

.method public final getIconRes()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mIconRes:I

    return v0
.end method

.method public final getUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    return-wide v0
.end method

.method protected getUpdateTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 20

    const-wide/32 v6, 0x5265c00

    const-wide/32 v8, 0x240c8400

    const/high16 v10, 0x40000

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v3 .. v10}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v3, "zh_CN"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUpdateTimeString: before - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "\\p{N}{1,2}(:|.)\\p{N}{2}\\s\\p{L}{2}"

    const/16 v4, 0x40

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-virtual/range {v15 .. v16}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v3, "getUpdateTimeString: XX:XX AM/PM"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    if-nez v12, :cond_1

    const-string v3, "\\p{L}{2}\\s\\p{N}{1,2}(:|.)\\p{N}{2}"

    const/16 v4, 0x40

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-virtual/range {v15 .. v16}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v3, "getUpdateTimeString: AM/PM XX:XX"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    if-nez v12, :cond_2

    const-string v3, "\\s\\p{L}\\s\\p{N}{1,2}(:|.)\\p{N}{2}"

    const/16 v4, 0x40

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-virtual/range {v15 .. v16}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v3, "getUpdateTimeString: A/P XX:XX for Arabic"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    if-nez v12, :cond_3

    const-string v3, "\\p{N}{1,2}(:|.)\\p{N}{2}\\s\\p{L}"

    const/16 v4, 0x40

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-virtual/range {v15 .. v16}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v3, "getUpdateTimeString: XX:XX A/P for Arabic"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    if-nez v12, :cond_4

    const-string v3, "\\p{N}{2}(:|.)\\p{N}{2}"

    const/16 v4, 0x40

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-virtual/range {v15 .. v16}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v3, "getUpdateTimeString: XX:XX"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    if-nez v12, :cond_5

    const-string v3, "getUpdateTimeString: can not pattern for date"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v16

    :goto_0
    return-object v17

    :cond_5
    invoke-static/range {p2 .. p3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUpdateTimeString: after - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v16

    goto :goto_0

    :cond_6
    const-wide/32 v4, 0x5265c00

    add-long v4, v4, p2

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v11, :cond_7

    const-string v3, ""

    invoke-virtual {v14, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[^\\p{L}]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    :cond_7
    const-string v3, ""

    invoke-virtual {v14, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    :cond_8
    const/4 v13, 0x0

    const/4 v2, 0x1

    :goto_2
    const/16 v3, 0x8

    if-ge v2, v3, :cond_9

    const-wide/32 v4, 0x5265c00

    int-to-long v6, v2

    mul-long/2addr v4, v6

    add-long v4, v4, p2

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v13, 0x1

    :cond_9
    if-eqz v13, :cond_b

    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string v3, "EEEE"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    move-wide/from16 v0, p2

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    if-eqz v11, :cond_c

    const-string v3, ""

    invoke-virtual {v14, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[^\\p{L}\\p{N}\\s]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_c
    const-string v3, ""

    invoke-virtual {v14, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mAppType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContent:Ljava/lang/String;

    return-void
.end method

.method protected abstract setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
.end method

.method protected setUpdateTime(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "appType"

    iget v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mAppType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "deleted"

    iget-boolean v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mDeleted:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "date"

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "updateTime"

    iget-wide v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
