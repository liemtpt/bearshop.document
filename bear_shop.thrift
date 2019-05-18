
namespace java com.bear.shop.service.api.thrift.models

struct TAccount {
  1:i32 id,
  2:string userName,
  3:string passWord,
  4:string firstName,
  5:string lastName,
  6:i32 type,
  7:string email,
  8:string address,
  9:string phone,
  10:string avatar,
  11:i32 setting,
  12:i32 status,
  13:string lastLogin,
  14:string pageId,
  15:string permissionId,
  16:string expireTime,
  17:string dateCreated,
  18:string dateModified,
}

struct TCart {
  1:i32 id,
  2:i32 product_id,
  3:string colors,
  4:string sizes,
  5:i32 quantity,
  6:i32 status,
  7:string createdAt,
  8:string modifiedAt,
  9:i32 userCreated,
  10:i32 userModified,
}

struct TCategory {
  1:i32 id,
  2:string name,
  3:string description,
  4:string url,
  5:string group,
  6:i32 parentId,
  7:string parentPrefix,
  8:string icon,
  9:i32 type,
  10:i32 amount,
  11:i32 status,
  12:string createdAt,
  13:string modifiedAt,
  14:i32 userCreated,
  15:i32 userModified,
}

struct TPage {
  1:i32 id,
  2:i32 parentId,
  3:string name,
  4:string link,
  5:string linkAlias,
  6:i32 ordering,
  7:string dateCreated,
  8:string dateModified,
}

struct TPermission {
  1:i32 id,
  2:string name,
  3:string description,
  4:string dateCreated,
  5:string dateModified,
}

struct TProduct {
  1:i32 id,
  2:string code,
  3:string title,
  4:i32 price,
  5:i32 vat,
  6:i32 sale,
  7:string avatar,
  8:string images,
  9:string shortDescription,
  10:string description,
  11:string url,
  12:string tags,
  13:string colors,
  14:string sizes,
  15:i32 categoryId,
  16:i32 rate,
  17:i32 type,
  18:bool isHot,
  19:string source,
  20:i32 ordering,
  21:i32 status,
  22:string createdAt,
  23:string modifiedAt,
  24:i32 userCreated,
  25:i32 userModified,
}

struct TWishList {
  1:i32 id,
  2:i32 product_id,
  3:string colors,
  4:string sizes,
  5:i32 quantity,
  6:string createdAt,
  7:string modifiedAt,
  8:i32 userCreated,
  9:i32 userModified,
}

struct TAccountResult {
	1: i16 error,
	2: TAccount value
}

struct TAccountListResult {
	1: i16 error,
	2: list<TAccount> listData,
	3: i64 totalRecord
}

struct TCartResult {
	1: i16 error,
	2: TCart value
}

struct TCartListResult {
	1: i16 error,
	2: list<TCart> listData,
	3: i64 totalRecord
}

struct TCategoryResult {
	1: i16 error,
	2: TCategory value
}

struct TCategoryListResult {
	1: i16 error,
	2: list<TCategory> listData,
	3: i64 totalRecord
}

struct TPageResult {
	1: i16 error,
	2: TPage value
}

struct TPageListResult {
	1: i16 error,
	2: list<TPage> listData,
	3: i64 totalRecord
}

struct TPermissionResult {
	1: i16 error,
	2: TPermission value
}

struct TPermissionListResult {
	1: i16 error,
	2: list<TPermission> listData,
	3: i64 totalRecord
}

struct TWishListResult {
	1: i16 error,
	2: TWishList value
}

struct TWishListListResult {
	1: i16 error,
	2: list<TWishList> listData,
	3: i64 totalRecord
}

struct TProductResult {
	1: i16 error,
	2: TProduct value
}

struct TProductListResult {
	1: i16 error,
	2: list<TProduct> listData,
	3: i64 totalRecord
}

// Service for all models
service TShopService {
	bool ping(),
	// Account
	bool insertAccount(1:TAccount value),
	bool updateAccount(1:TAccount value),
	bool updatePasswordAccount(1:string userName, 2:string password),
	bool updateLastLoginAccount(1:string userName),
	bool updateStatusAccount(1:string userName, 2:i32 status),
	bool deleteAccount(1:i32 id),
	//TAccountResult getLoginAccount(1:string userName, 2:string password),
	//TAccountResult getAccountByUserName(1:string userName),
	//TAccountListResult getListAccountPaging(1:string whereClause),
	//TAccountListResult getListAccountByFilter(1:TAccountFilter filter),

	//PAGE
	bool insertPage(1:TPage value),
	bool updatePage(1:TPage value),
	bool deletePage(1:i32 id),
	//TPageListResult getListByParentId(1:i32 parentId),
	//TPageListResult getListByPageIds(1:string pageIds),
	//TPageListResult getListPageByFilter(1:TPageFilter filter),

	//ADVAND PERMISSION
	list<i32> getListPermissionId(),

}
